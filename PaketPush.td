{
  "Reference": {
    "Url": "https://fsprojects.github.io/Paket/paket-push.html"
  },
  "Name": "Paket",
  "OfficialUrl": "https://fsprojects.github.io/paket",
  "Help": "<p>Paket is a dependency manager for .NET and mono projects, which is designed to work well with <a href=\"https://www.nuget.org/\">NuGet</a> packages and also enables referencing files directly from <a href=\"https://fsprojects.github.io/Paket/git-dependencies.html\">Git repositories</a> or any <a href=\"https://fsprojects.github.io/Paket/http-dependencies.html\">HTTP resource</a>. It enables precise and predictable control over what packages the projects within your application reference.</p><p>If you want to learn how to use Paket then read the <a href=\"https://fsprojects.github.io/Paket/getting-started.html\"><i>Getting started</i> tutorial</a> and take a look at the <a href=\"https://fsprojects.github.io/Paket/faq.html\">FAQs</a>.</p><p>If you are already using NuGet for package management in your solution then you can learn about the upgrade process in the <a href=\"https://fsprojects.github.io/Paket/getting-started.html#Automatic-NuGet-conversion\">convert from NuGet</a> section.</p>",
  "Task": {
    "SkipAttributes": true,
    "Postfix": "Push",
    "DefiniteArgument": "push",
    "PackageId": "Paket",
    "PackageExecutable": "paket.exe",
    "SettingsClass": {
      "Properties": [
        {
          "Name": "Url",
          "Format": "url {value}",
          "Type": "string",
          "Help": "Url of the NuGet feed."
        },
        {
          "Name": "File",
          "Format": "file {value}",
          "Type": "string",
          "Help": "Path to the package."
        },
        {
          "Name": "ApiKey",
          "Format": "apikey {value}",
          "Type": "string",
          "Help": "Optionally specify your API key on the command line. Otherwise uses the value of the `nugetkey` environment variable."
        },
        {
          "Name": "Endpoint",
          "Format": "endpoint {value}",
          "Type": "string",
          "Help": "Optionally specify a custom api endpoint to push to. Defaults to `/api/v2/package`."
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