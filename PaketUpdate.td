{
  "Reference": {
    "Url": "https://fsprojects.github.io/Paket/paket-update.html"
  },
  "Name": "Paket",
  "OfficialUrl": "https://fsprojects.github.io/paket",
  "Help": "<p>Paket is a dependency manager for .NET and mono projects, which is designed to work well with <a href=\"https://www.nuget.org/\">NuGet</a> packages and also enables referencing files directly from <a href=\"https://fsprojects.github.io/Paket/git-dependencies.html\">Git repositories</a> or any <a href=\"https://fsprojects.github.io/Paket/http-dependencies.html\">HTTP resource</a>. It enables precise and predictable control over what packages the projects within your application reference.</p><p>If you want to learn how to use Paket then read the <a href=\"https://fsprojects.github.io/Paket/getting-started.html\"><i>Getting started</i> tutorial</a> and take a look at the <a href=\"https://fsprojects.github.io/Paket/faq.html\">FAQs</a>.</p><p>If you are already using NuGet for package management in your solution then you can learn about the upgrade process in the <a href=\"https://fsprojects.github.io/Paket/getting-started.html#Automatic-NuGet-conversion\">convert from NuGet</a> section.</p>",
  "Task": {
    "SkipAttributes": true,
    "Postfix": "Update",
    "DefiniteArgument": "update",
    "PackageId": "Paket",
    "PackageExecutable": "paket.exe",
    "SettingsClass": {
      "Properties": [
        {
          "Name": "PackageId",
          "Format": "nuget {value}",
          "Type": "string",
          "Help": "NuGet package id."
        },
        {
          "Name": "PackageVersion",
          "Format": "version {value}",
          "Type": "string",
          "Help": "Allows to specify version of the package."
        },
        {
          "Name": "DependencyGroup",
          "Format": "group {value}",
          "Type": "string",
          "Help": "Allows to specify the dependency group."
        },
        {
          "Name": "Force",
          "Format": "--force",
          "Type": "bool",
          "Help": "Forces the download and reinstallation of all packages."
        },
        {
          "Name": "Redirects",
          "Format": "--redirects",
          "Type": "bool",
          "Help": "Creates binding redirects for the NuGet packages."
        },
        {
          "Name": "CreateNewBindingFiles",
          "Format": "--createnewbindingfiles",
          "Type": "bool",
          "Help": "Creates binding redirect files if needed."
        },
        {
          "Name": "CleanRedirects",
          "Format": "--clean-redirects",
          "Type": "bool",
          "Help": "Removes all binding redirects that are not specified by Paket."
        },
        {
          "Name": "NoInstall",
          "Format": "--no-install",
          "Type": "bool",
          "Help": "Skips paket install process (patching of csproj, fsproj, ... files) after the generation of paket.lock file."
        },
        {
          "Name": "KeepMajor",
          "Format": "--keep-major",
          "Type": "bool",
          "Help": "Allows only updates that are not changing the major version of the NuGet packages."
        },
        {
          "Name": "KeepMinor",
          "Format": "--keep-minor",
          "Type": "bool",
          "Help": "Allows only updates that are not changing the minor version of the NuGet packages."
        },
        {
          "Name": "KeepPatch",
          "Format": "--keep-patch",
          "Type": "bool",
          "Help": "Allows only updates that are not changing the patch version of the NuGet packages."
        },
        {
          "Name": "Filter",
          "Format": "--filter",
          "Type": "bool",
          "Help": "Treat the nuget parameter as a regex to filter packages rather than an exact match."
        },
        {
          "Name": "TouchAffectedRefs",
          "Format": "--touch-affected-refs",
          "Type": "bool",
          "Help": "Touches project files referencing packages which are affected, to help incremental build tools detecting the change."
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