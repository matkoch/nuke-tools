{
  "Reference": {
    "Url": "https://fsprojects.github.io/Paket/paket-restore.html"
  },
  "Name": "Paket",
  "OfficialUrl": "https://fsprojects.github.io/paket",
  "Help": "<p>Paket is a dependency manager for .NET and mono projects, which is designed to work well with <a href=\"https://www.nuget.org/\">NuGet</a> packages and also enables referencing files directly from <a href=\"https://fsprojects.github.io/Paket/git-dependencies.html\">Git repositories</a> or any <a href=\"https://fsprojects.github.io/Paket/http-dependencies.html\">HTTP resource</a>. It enables precise and predictable control over what packages the projects within your application reference.</p><p>If you want to learn how to use Paket then read the <a href=\"https://fsprojects.github.io/Paket/getting-started.html\"><i>Getting started</i> tutorial</a> and take a look at the <a href=\"https://fsprojects.github.io/Paket/faq.html\">FAQs</a>.</p><p>If you are already using NuGet for package management in your solution then you can learn about the upgrade process in the <a href=\"https://fsprojects.github.io/Paket/getting-started.html#Automatic-NuGet-conversion\">convert from NuGet</a> section.</p>",
  "Task": {
    "SkipAttributes": true,
    "Postfix": "Restore",
    "DefiniteArgument": "restore",
    "PackageId": "Paket",
    "PackageExecutable": "paket.exe",
    "SettingsClass": {
      "Properties": [
        {
          "Name": "Force",
          "Format": "--force",
          "Type": "bool",
          "Help": "Forces the download of all packages."
        },
        {
          "Name": "OnlyReferenced",
          "Format": "--only-referenced",
          "Type": "bool",
          "Help": "Allows to restore packages that are referenced in paket.references files, instead of all packages in paket.dependencies."
        },
        {
          "Name": "TouchAffectedRefs",
          "Format": "--touch-affected-refs",
          "Type": "bool",
          "Help": "Touches project files referencing packages which are being restored, to help incremental build tools detecting the change."
        },
        {
          "Name": "IgnoreChecks",
          "Format": "--ignore-checks",
          "Type": "bool",
          "Help": "Skips the test if paket.dependencies and paket.lock are in sync."
        },
        {
          "Name": "FailOnChecks",
          "Format": "--fail-on-checks",
          "Type": "bool",
          "Help": "Causes the restore to fail if any of the checks fail."
        },
        {
          "Name": "DependencyGroup",
          "Format": "group {value}",
          "Type": "string",
          "Help": "Allows to restore a single group."
        },
        {
          "Name": "ProjectFile",
          "Format": "--project {value}",
          "Type": "string",
          "Help": "Allows to restore dependencies for a project."
        },
        {
          "Name": "ReferencesFiles",
          "Format": "--references-files {value}",
          "Type": "List<string>",
          "Help": "Allows to restore all packages from the given paket.references files."
        },
        {
          "Name": "TargetFramework",
          "Format": "--target-framework {value}",
          "Type": "string",
          "Help": "Allows to restore only for a specified target framework."
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