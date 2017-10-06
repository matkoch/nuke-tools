using System;
using System.Linq;
using Nuke.Core;
using static Nuke.Core.IO.FileSystemTasks;
using static Nuke.Core.IO.PathConstruction;
using static ReferenceDownload;

class Build : NukeBuild
{
    public static int Main () => Execute<Build>(x => x.References);

    string MetadataDirectory => SolutionDirectory / "metadata";
    string ReferencesDirectory => (AbsolutePath) MetadataDirectory / "references";

    Target Clean => _ => _
            .Executes(() => EnsureCleanDirectory(ReferencesDirectory));

    Target References => _ => _
            .DependsOn(Clean)
            .Executes(() => DownloadReferences(MetadataDirectory, ReferencesDirectory));
}