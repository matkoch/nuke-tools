// Copyright Matthias Koch 2017.
// Distributed under the MIT License.
// https://github.com/nuke-build/nuke/blob/master/LICENSE

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using HtmlAgilityPack;
using JetBrains.Annotations;
using Newtonsoft.Json;
using Nuke.Common.IO;
using Nuke.Core;
using Nuke.Core.Utilities.Collections;
using static Nuke.Core.IO.PathConstruction;

public static class ReferenceDownload
{
    public static void DownloadReferences(string metadataDirectory, string referencesDirectory)
    {
        var downloadTasks = Directory.GetFiles(metadataDirectory, "*.json", SearchOption.TopDirectoryOnly)
                .Where(x => !x.EndsWith("_schema.json"))
                .Select(LoadTool)
                .Where(x => x.References.Any())
                .ForEachLazy(x => Logger.Log($"Downloading {x.References.Count} references for {x.DefinitionFile}..."))
                .SelectMany(x => x.References.Select((y, i) => DownloadReference(y, i + 1, x.DefinitionFile, referencesDirectory)));

        Task.WaitAll(downloadTasks.ToArray());
    }

    static Tool LoadTool (string definitionFile)
    {
        var tool = SerializationTasks.JsonDeserializeFromFile<Tool>(definitionFile);
        tool.DefinitionFile = Path.GetFileName(definitionFile);
        return tool;
    }

    static async Task DownloadReference (string reference, int index, string definitionFile, string referencesDirectory)
    {
        try
        {
            var definitionFileWithoutExtension = Path.GetFileNameWithoutExtension(definitionFile);
            var referenceFile = $"{definitionFileWithoutExtension}.ref.{index.ToString().PadLeft(totalWidth: 3, paddingChar: '0')}.txt";
            var referenceContent = await GetReferenceContent(reference);
            File.WriteAllText((AbsolutePath) referencesDirectory / referenceFile, referenceContent);
        }
        catch (Exception exception)
        {
            // TODO: Logger.Error
            Console.Error.WriteLine($"Couldn't update reference #{index} for {definitionFile}:");
            Console.Error.WriteLine(exception.Message);
        }
    }

    static async Task<string> GetReferenceContent(string reference)
    {
        var referenceValues = reference.Split('#');

        var tempFile = Path.GetTempFileName();
        using (var webClient = new AutomaticDecompressingWebClient())
        {
            await webClient.DownloadFileTaskAsync(referenceValues[0], tempFile);
        }

        if (referenceValues.Length == 1)
            return File.ReadAllText(tempFile, Encoding.UTF8);

        var document = new HtmlDocument();
        document.Load(tempFile, Encoding.UTF8);
        return document.DocumentNode.SelectSingleNode(referenceValues[1]).InnerText;
    }

    [UsedImplicitly(ImplicitUseKindFlags.Assign, ImplicitUseTargetFlags.WithMembers)]
    [DebuggerDisplay("{" + nameof(DefinitionFile) + "}")]
    class Tool
    {
        [JsonIgnore]
        public string DefinitionFile { get; set; }

        public string Name { get; set; }
        public List<string> References { get; set; }
    }

    class AutomaticDecompressingWebClient : WebClient
    {
        protected override WebRequest GetWebRequest(Uri address)
        {
            var request = base.GetWebRequest(address) as HttpWebRequest;

            if (request != null)
                request.AutomaticDecompression = DecompressionMethods.Deflate | DecompressionMethods.GZip;

            return request;
        }
    }
}