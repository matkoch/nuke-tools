{
  "Reference": {
    "Url": "https://fsprojects.github.io/Paket/paket-pack.html"
  },
  "Name": "Paket",
  "OfficialUrl": "https://fsprojects.github.io/paket",
  "Help": "<p>Paket is a dependency manager for .NET and mono projects, which is designed to work well with <a href=\"https://www.nuget.org/\">NuGet</a> packages and also enables referencing files directly from <a href=\"https://fsprojects.github.io/Paket/git-dependencies.html\">Git repositories</a> or any <a href=\"https://fsprojects.github.io/Paket/http-dependencies.html\">HTTP resource</a>. It enables precise and predictable control over what packages the projects within your application reference.</p><p>If you want to learn how to use Paket then read the <a href=\"https://fsprojects.github.io/Paket/getting-started.html\"><i>Getting started</i> tutorial</a> and take a look at the <a href=\"https://fsprojects.github.io/Paket/faq.html\">FAQs</a>.</p><p>If you are already using NuGet for package management in your solution then you can learn about the upgrade process in the <a href=\"https://fsprojects.github.io/Paket/getting-started.html#Automatic-NuGet-conversion\">convert from NuGet</a> section.</p>",
  "Task": {
    "IconClass": "box",
    "Postfix": "Pack",
    "DefiniteArgument": "pack",
    "PackageId": "Paket",
    "PackageExecutable": "paket.exe",
    "SettingsClass": {
      "Properties": [
        {
          "Name": "OutputDirectory",
          "Format": "output {value}",
          "Type": "string",
          "Help": "Output directory to put .nupkg files."
        },
        {
          "Name": "BuildConfiguration",
          "Format": "buildconfig {value}",
          "Type": "string",
          "Help": "Optionally specify build configuration that should be packaged (defaults to Release)."
        },
        {
          "Name": "BuildPlatform",
          "Format": "buildplatform {value}",
          "Type": "string",
          "Help": "Optionally specify build platform that should be packaged (if not provided or empty, checks all known platform targets)."
        },
        {
          "Name": "PackageVersion",
          "Format": "version {value}",
          "Type": "string",
          "Help": "Specify version of the package."
        },
        {
          "Name": "TemplateFile",
          "Format": "templatefile {value}",
          "Type": "string",
          "Help": "Allows to specify a single template file."
        },
        {
          "Name": "Exclude",
          "Format": "exclude {value}",
          "Type": "string",
          "Help": "Exclude template file by id."
        },
        {
          "Name": "SpecificVersion",
          "Format": "specific-version {value}",
          "Type": "string",
          "Help": "Specifies a version number for template with given id."
        },
        {
          "Name": "ReleaseNotes",
          "Format": "releaseNotes {value}",
          "Type": "string",
          "Help": "Specify relase notes for the package."
        },
        {
          "Name": "LockDependencies",
          "Format": "lock-dependencies",
          "Type": "bool",
          "Help": "Get the version requirements from paket.lock instead of paket.dependencies."
        },
        {
          "Name": "MinimumFromLockFile",
          "Format": "minimum-from-lock-file",
          "Type": "bool",
          "Help": "Get the version requirements from paket.lock instead of paket.dependencies, and add them as a minimum version. `lock-dependencies` will over-ride this option."
        },
        {
          "Name": "PinProjectReferences",
          "Format": "pin-project-references",
          "Type": "bool",
          "Help": "Pin dependencies generated from project references (=) instead of using minimum (>=) for version specification.  If `lock-dependencies` is specified, project references will be pinned even if this option is not specified."
        },
        {
          "Name": "Symbols",
          "Format": "symbols",
          "Type": "bool",
          "Help": "Build symbol/source packages in addition to library/content packages."
        },
        {
          "Name": "IncludeReferencedProjects",
          "Format": "include-referenced-projects",
          "Type": "bool",
          "Help": "Include symbol/source from referenced projects."
        },
        {
          "Name": "ProjectUrl",
          "Format": "project-url {value}",
          "Type": "string",
          "Help": "Url to the projects home page."
        },
        {
          "Name": "Verbose",
          "Format": "--verbose",
          "Type": "bool",
          "Help": "Enable verbose console output for the paket process."
        },
        {
          "Name": "LogFile",
          "Format": "--log-file {value}",
          "Type": "string",
          "Help": "Specify a log file for the paket process."
        },
        {
          "Name": "Silent",
          "Format": "--silent",
          "Type": "bool",
          "Help": "Suppress console output for the paket process."
        },
        {
          "Name": "ShowVersion",
          "Format": "--version",
          "Type": "bool",
          "Help": "Display the version."
        },
        {
          "Name": "FromBootstrapper",
          "Format": "--from-bootstrapper",
          "Type": "bool",
          "Help": "Call coming from the '--run' feature of the bootstrapper."
        }
      ]
    }
  },
  "DataClasses": [],
  "Enumerations": []
}