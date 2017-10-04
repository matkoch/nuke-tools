// Copyright Matthias Koch 2017.
// Distributed under the MIT License.
// https://github.com/nuke-build/nuke/blob/master/LICENSE

using Nuke.Common.Git;
using Nuke.Core;
using static Nuke.Core.IO.FileSystemTasks;

class Build : NukeBuild
{
    // Auto-injection fields:
    //  - [GitVersion] must have 'GitVersion.CommandLine' referenced
    //  - [GitRepository] parses the origin from git config
    //  - [Parameter] retrieves its value from command-line arguments or environment variables
    //
    //[GitVersion] readonly GitVersion GitVersion;
    //[GitRepository] readonly GitRepository GitRepository;
    //[Parameter] readonly string MyGetApiKey;
    [GitRepository] readonly GitRepository GitRepository;

    [Parameter] string GitEmail;

    [Parameter] string GitUsername;


    Target Clean => _ => _
        .Executes(() => EnsureCleanDirectory(SolutionDirectory / "references"))
        .Executes(() => EnsureCleanDirectory(OutputDirectory));


    Target CreateFastlaneMetadata => _ => _
        .Executes(() => FastlaneMetadataCreator.CreateMetadata(SolutionDirectory / "metadata"));

    Target DownloadReferences => _ => _
        .DependsOn(Clean)
        .Executes(() => ReferenceHelper.DownloadReferences(Instance.SolutionDirectory / "metadata",
            Instance.SolutionDirectory / "references"));

    // This is the application entry point for the build.
    // It also defines the default target to execute.
    public static int Main()
    {
        return Execute<Build>(x => x.DownloadReferences);
    }
}