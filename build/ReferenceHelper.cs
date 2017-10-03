using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using HtmlAgilityPack;
using JetBrains.Annotations;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Nuke.Core.Utilities.Collections;

public static class ReferenceHelper
{

    public static void DownloadReferences(string metaFiles, string generation)
    {
       
      DownloadReferencesAsync(metaFiles,generation).Wait();

    }

    private static async Task DownloadReferencesAsync(string metaFiles, string generation)
    {
        var files = Directory.GetFiles(metaFiles, "*.json", SearchOption.TopDirectoryOnly).Where(x => !x.EndsWith("_schema.json")).Select(f =>
        {
            var tool = Load(f, generation);
            return UpdateReferences(tool);
        });
        await Task.WhenAll(files);
    }

    private static Tool Load(string file, string generation)
    {
        var content = File.ReadAllText(file);
        var tool = JsonConvert.DeserializeObject<Tool>(content);

        var directory = Path.Combine(generation, tool.Name);
        Directory.CreateDirectory(directory);

        tool.DefinitionFile = file;
        tool.GenerationFileBase = Path.Combine(directory, Path.GetFileNameWithoutExtension(file));
        tool.RepositoryUrl = $"https://github.com/nuke-build/tools/blob/master/{Path.GetFileName(file)}";


        return tool;
    }

    [UsedImplicitly(ImplicitUseKindFlags.Assign, ImplicitUseTargetFlags.WithMembers)]
    [DebuggerDisplay("{" + nameof(DefinitionFile) + "}")]
    private class Tool
    {
        [JsonIgnore]
        public string DefinitionFile { get; set; }
        [JsonIgnore]
        public string RepositoryUrl { get; set; }

        public string Name { get; set; }
        public string GenerationFileBase { get; set; }
        public List<string> References { get; set; }


    }

    private static  async Task UpdateReferences(Tool tool)
    {
        var tasks = Enumerable.Range(0, tool.References.Count)
            .Select(i =>
                UpdateReference(tool, i));

       await Task.WhenAll(tasks);

    }

    private static async Task UpdateReference(Tool tool,int referenceIndex)
    {
        try
        {
            var referenceContent = await GetReferenceContent(tool.References[referenceIndex]);
            File.WriteAllText(
                $"{tool.GenerationFileBase}.ref.{referenceIndex.ToString().PadLeft(totalWidth: 3, paddingChar: '0')}.txt",
                referenceContent);
        }
        catch (Exception exception)
        {
            Console.Error.WriteLine($"Couldn't update reference #{referenceIndex} for {Path.GetFileName(tool.DefinitionFile)}:");
            Console.Error.WriteLine(exception.Message);
        }
    }
    private static async Task<string> GetReferenceContent(string reference)
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

    private class AutomaticDecompressingWebClient : WebClient
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
