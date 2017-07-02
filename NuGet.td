{
  "References": [
    "https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference#//table[12]",
    "https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference#//table[13]",
    "https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference#//table[14]"
  ],
  "Name": "NuGet",
  "OfficialUrl": "https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference",
  "Help": "The NuGet Command Line Interface (CLI) provides the full extent of NuGet functionality to install, create, publish, and manage packages.",
  "IconClass": "box",
  "Tasks": [
    {
      "Postfix": "Push",
      "DefiniteArgument": "push",
      "SettingsClass": {
        "BaseClass": "NuGetSettings",
        "Properties": [
          {
            "Name": "TargetPath",
            "Type": "string",
            "Assertion": "File",
            "Format": "{value}",
            "Help": "Path of the package to push."
          },
          {
            "Name": "ApiKey",
            "Type": "string",
            "Format": "-ApiKey {value}",
            "Secret": true,
            "Help": "The API key for the target repository. If not present, the one specified in <i>%AppData%\\NuGet\\NuGet.Config</i> is used."
          },
          {
            "Name": "Source",
            "Type": "string",
            "Format": "-Source {value}",
            "Help": "Specifies the server URL. With NuGet 2.5+, NuGet will identify a UNC or local folder source and simply copy the file there instead of pushing it using HTTP. Also, starting with NuGet 3.4.2, this is a mandatory parameter unless the <i>NuGet.Config</i> file specifies a <i>DefaultPushSource</i> value."
          },
          {
            "Name": "SymbolSource",
            "Type": "string",
            "Format": "-SymbolSource {value}",
            "Help": "<i>(3.5+)</i> Specifies the symbol server URL; nuget.smbsrc.net is used when pushing to nuget.org"
          },
          {
            "Name": "SymbolApiKey",
            "Type": "string",
            "Format": "-SymbolApiKey {value}",
            "Secret": true,
            "Help": "<i>(3.5+)</i> Specifies the API key for the URL specified in <c>-SymbolSource</c>."
          },
          {
            "Name": "NoSymbols",
            "Type": "bool",
            "Format": "-NoSymbols",
            "Help": "<i>(3.5+)</i> If a symbols package exists, it will not be pushed to a symbol server."
          },
          {
            "Name": "DisableBuffering",
            "Type": "bool",
            "Format": "-DisableBuffering",
            "Help": "Disables buffering when pushing to an HTTP(s) server to decrease memory usages. Caution: when this option is used, integrated Windows authentication might not work."
          },
          {
            "Name": "ConfigFile",
            "Type": "string",
            "Assertion": "FileOrNull",
            "Format": "-ConfigFile {value}",
            "Help": "<i>(2.5+)</i> The NuGet configuration file to apply. If not specified, <i>%AppData%\\NuGet\\NuGet.Config</i> is used."
          },
          {
            "Name": "Verbosity",
            "Type": "NuGetVerbosity?",
            "Format": "-Verbosity {value}",
            "Help": "<i>(2.5+)</i> Specifies the amount of details displayed in the output: <i>normal</i>, <i>quiet</i>, <i>detailed</i>."
          },
          {
            "Name": "ForceEnglishOutput",
            "Type": "bool",
            "Format": "-ForceEnglishOutput",
            "Help": "<i>(3.5+)</i> Forces nuget.exe to run using an invariant, English-based culture."
          },
          {
            "Name": "NonInteractive",
            "Type": "bool",
            "Format": "-NonInteractive",
            "Help": "Suppresses prompts for user input or confirmations."
          },
          {
            "Name": "Timeout",
            "Type": "int?",
            "Format": "-Timeout {value}",
            "Help": "Specifies the timeout, in seconds, for pushing to a server. The default is 300 seconds (5 minutes)."
          }
        ]
      }
    },
    {
      "Postfix": "Pack",
      "DefiniteArgument": "pack",
      "SettingsClass": {
        "BaseClass": "NuGetSettings",
        "Properties": [
          {
            "Name": "TargetPath",
            "Type": "string",
            "Assertion": "File",
            "Format": "{value}",
            "CreateOverload": true,
            "Help": "The <c>.nuspec</c> or <c>.csproj</c> file."
          },
          {
            "Name": "BasePath",
            "Type": "string",
            "Assertion": "Directory",
            "Format": "-BasePath {value}",
            "Help": "Sets the base path of the files defined in the <c>.nuspec</c> file."
          },
          {
            "Name": "Build",
            "Type": "bool",
            "Format": "-Build",
            "Help": "Specifies that the project should be built before building the package."
          },
          {
            "Name": "Exclude",
            "Type": "string",
            "Format": "-Exclude {value}",
            "Help": "Specifies one or more wildcard patterns to exclude when creating a package."
          },
          {
            "Name": "ExcludeEmptyDirectories",
            "Type": "bool",
            "Format": "-ExcludeEmptyDirectories",
            "Help": "Prevent inclusion of empty directories when building the package."
          },
          {
            "Name": "IncludeReferencedProjects",
            "Type": "bool",
            "Format": "-IncludeReferencedProjects",
            "Help": "Indicates that the built package should include referenced projects either as dependencies or as part of the package. If a referenced project has a corresponding <c>.nuspec</c> file that has the same name as the project, then that referenced project is added as a dependency. Otherwise, the referenced project is added as part of the package."
          },
          {
            "Name": "MinClientVersion",
            "Type": "bool",
            "Format": "-MinClientVersion",
            "Help": "Set the <i>minClientVersion</i> attribute for the created package. This value will override the value of the existing <i>minClientVersion</i> attribute (if any) in the <c>.nuspec</c> file."
          },
          {
            "Name": "ForceEnglishOutput",
            "Type": "bool",
            "Format": "-ForceEnglishOutput",
            "Help": "<i>(3.5+)</i> Forces nuget.exe to run using an invariant, English-based culture."
          },
          {
            "Name": "MSBuildPath",
            "Type": "string",
            "Format": "-MSBuildPath {value}",
            "Help": "<i>(4.0+)</i> Specifies the path of MSBuild to use with the command, taking precedence over <c>-MSBuildVersion</c>."
          },
          {
            "Name": "MSBuildVersion",
            "Type": "Nuke.Common.Tools.MSBuild.MSBuildVersion?",
            "Format": "-MSBuildVersion {value}",
            "CustomValue": true,
            "Help": "<i>(3.2+)</i> Specifies the version of MSBuild to be used with this command. Supported values are <i>4</i>, <i>12</i>, <i>14</i>. By default the MSBuild in your path is picked, otherwise it defaults to the highest installed version of MSBuild."
          },
          {
            "Name": "NoDefaultExcludes",
            "Type": "bool",
            "Format": "-NoDefaultExcludes",
            "Help": "Prevents default exclusion of NuGet package files and files and folders starting with a dot, such as <i>.svn</i> and <c>.gitignore</c>."
          },
          {
            "Name": "NoPackageAnalysis",
            "Type": "bool",
            "Format": "-NoPackageAnalysis",
            "Help": "Specifies that pack should not run package analysis after building the package."
          },
          {
            "Name": "OutputDirectory",
            "Type": "string",
            "Format": "-OutputDirectory {value}",
            "Help": "Specifies the folder in which the created package is stored. If no folder is specified, the current folder is used."
          },
          {
            "Name": "Properties",
            "Type": "Dictionary<string, string>",
            "Format": "-Properties {value}",
            "CustomValue": true,
            "Help": "Specifies a list of <c>token=value</c> pairs, separated by semicolons, where each occurrence of <c>$token$</c> in the <c>.nuspec</c> file will be replaced with the given value. Values can be strings in quotation marks."
          },
          {
            "Name": "Suffix",
            "Type": "string",
            "Format": "-Suffix {value}",
            "Help": "<i>(3.4.4+)</i> Appends a suffix to the internally generated version number, typically used for appending build or other pre-release identifiers. For example, using <c>-suffix nightly</c> will create a package with a version number like <c>1.2.3-nightly</c>. Suffixes must start with a letter to avoid warnings, errors, and potential incompatibilities with different versions of NuGet and the NuGet Package Manager."
          },
          {
            "Name": "Symbols",
            "Type": "bool",
            "Format": "-Symbols",
            "Help": "Specifies that the package contains sources and symbols. When used with a <c>.nuspec</c> file, this creates a regular NuGet package file and the corresponding symbols package."
          },
          {
            "Name": "Tool",
            "Type": "bool",
            "Format": "-Tool",
            "Help": "Specifies that the output files of the project should be placed in the <c>tool</c> folder."
          },
          {
            "Name": "Verbosity",
            "Type": "NuGetVerbosity?",
            "Format": "-Verbosity {value}",
            "Help": "<i>(2.5+)</i> Specifies the amount of details displayed in the output: <i>normal</i>, <i>quiet</i>, <i>detailed</i>."
          },
          {
            "Name": "Version",
            "Type": "string",
            "Format": "-Version {value}",
            "CreateOverload": true,
            "Help": "Overrides the version number from the <c>.nuspec</c> file."
          },
          {
            "Name": "Configuration",
            "Type": "string"
          }
        ]
      }
    },
    {
      "Postfix": "Restore",
      "DefiniteArgument": "restore",
      "SettingsClass": {
        "BaseClass": "NuGetSettings",
        "Properties": [
          {
            "Name": "TargetPath",
            "Type": "string",
            "Format": "{value}",
            "CreateOverload": true,
            "Help": "Defines the project to restore. I.e., the location of a solution file, a <c>packages.config</c>, or a <c>project.json</c> file."
          },
          {
            "Name": "ConfigFile",
            "Type": "string",
            "Format": "-ConfigFile {value}",
            "Help": "The NuGet configuration file to apply. If not specified, <i>%AppData%\\NuGet\\NuGet.Config</i> is used."
          },
          {
            "Name": "DirectDownload",
            "Type": "bool",
            "Format": "-DirectDownload",
            "Help": "<i>(4.0+)</i> Downloads packages directly without populating caches with any binaries or metadata."
          },
          {
            "Name": "DisableParallelProcessing",
            "Type": "bool",
            "Format": "-DisableParallelProcessing",
            "Help": "Disables restoring multiple packages in parallel."
          },
          {
            "Name": "FallbackSource",
            "Type": "List<string>",
            "Format": "-FallbackSource {value}",
            "MainSeparator": ";",
            "Help": "<i>(3.2+)</i> A list of package sources to use as fallbacks in case the package isn't found in the primary or default source."
          },
          {
            "Name": "ForceEnglishOutput",
            "Type": "bool",
            "Format": "-ForceEnglishOutput",
            "Help": "<i>(3.5+)</i> Forces nuget.exe to run using an invariant, English-based culture."
          },
          {
            "Name": "MSBuildPath",
            "Type": "string",
            "Format": "-MSBuildPath {value}",
            "Help": "<i>(4.0+)</i> Specifies the path of MSBuild to use with the command, taking precedence over <c>-MSBuildVersion</c>."
          },
          {
            "Name": "MSBuildVersion",
            "Type": "Nuke.Common.Tools.MSBuild.MSBuildVersion?",
            "Format": "-MSBuildVersion {value}",
            "Help": "<i>(3.2+)</i> Specifies the version of MSBuild to be used with this command. Supported values are <i>4</i>, <i>12</i>, <i>14</i>, <i>15</i>. By default the MSBuild in your path is picked, otherwise it defaults to the highest installed version of MSBuild."
          },
          {
            "Name": "NoCache",
            "Type": "bool",
            "Format": "-NoCache",
            "Help": "Prevents NuGet from using packages from local machine caches."
          },
          {
            "Name": "NonInteractive",
            "Type": "bool",
            "Format": "-NonInteractive",
            "Help": "Suppresses prompts for user input or confirmations."
          },
          {
            "Name": "OutputDirectory",
            "Type": "string",
            "Format": "-OutputDirectory {value}",
            "Help": "Specifies the folder in which packages are installed. If no folder is specified, the current folder is used."
          },
          {
            "Name": "PackageSaveMode",
            "Type": "PackageSaveMode?",
            "Format": "-PackageSaveMode {value}",
            "CustomValue": true,
            "Help": "Specifies the types of files to save after package installation: one of <c>nuspec</c>, <c>nupkg</c>, or <c>nuspec;nupkg</c>."
          },
          {
            "Name": "PackagesDirectory",
            "Type": "string",
            "Format": "-PackagesDirectory {value}",
            "Help": "Same as <c>OutputDirectory</c>."
          },
          {
            "Name": "Project2ProjectTimeOut",
            "Type": "int?",
            "Format": "-Project2ProjectTimeOut {value}",
            "Help": "Timeout in seconds for resolving project-to-project references."
          },
          {
            "Name": "Recursive",
            "Type": "bool",
            "Format": "-Recursive",
            "Help": "<i>(4.0+)</i> Restores all references projects for UWP and .NET Core projects. Does not apply to projects using <c>packages.config</c>."
          },
          {
            "Name": "RequireConsent",
            "Type": "bool",
            "Format": "-RequireConsent",
            "Help": "Verifies that restoring packages is enabled before downloading and installing the packages. For details, see <a href=\"https://docs.microsoft.com/en-us/nuget/consume-packages/package-restore\">Package Restore</a>."
          },
          {
            "Name": "SolutionDirectory",
            "Type": "string",
            "Format": "-SolutionDirectory {value}",
            "Help": "Specifies the solution folder. Not valid when restoring packages for a solution."
          },
          {
            "Name": "Source",
            "Type": "List<string>",
            "Format": "-Source {value}",
            "MainSeparator": ";",
            "Help": "Specifies list of package sources to use for the restore."
          },
          {
            "Name": "Verbosity",
            "Type": "NuGetVerbosity?",
            "Format": "-Verbosity {value}",
            "Help": "<i>(2.5+)</i> Specifies the amount of detail displayed in the output: <i>normal</i>, <i>quiet</i>, <i>detailed</i>."
          }
        ]
      }
    }
  ],
  "DataClasses": [],
  "Enumerations": [
    {
      "Name": "NuGetVerbosity",
      "Values": [
        "Normal",
        "Quiet",
        "Detailed"
      ]
    },
    {
      "Name": "PackageSaveMode",
      "Values": [
        "Nuspec",
        "Nupkg",
        "NuspecAndNupkg"
      ]
    }
  ]
}