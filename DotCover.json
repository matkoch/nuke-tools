{
  "License": [
    "Copyright Matthias Koch 2017.",
    "Distributed under the MIT License.",
    "https://github.com/nuke-build/tools/blob/master/LICENSE"
  ],
  "References": [
    "https://www.jetbrains.com/help/dotcover/dotCover__Console_Runner_Commands.html#//article[@class='article']"
  ],
  "Name": "DotCover",
  "OfficialUrl": "https://www.jetbrains.com/dotcover",
  "Help": "dotCover is a .NET unit testing and code coverage tool that works right in Visual Studio, helps you know to what extent your code is covered with unit tests, provides great ways to visualize code coverage, and is Continuous Integration ready. dotCover calculates and reports statement-level code coverage in applications targeting .NET Framework, Silverlight, and .NET Core.",
  "PackageId": "JetBrains.dotCover.CommandLineTools",
  "IconClass": "shield2",
  "Tasks": [
    {
      "Postfix": "Analyse",
      "CustomStart": true,
      "DefiniteArgument": "analyse",
      "SettingsClass": {
        "Properties": [
          {
            "Name": "TestAction",
            "Type": "Action",
            "CreateOverload": true,
            "Help": "The action that executes tests."
          },
          {
            "Name": "TargetExecutable",
            "Type": "string",
            "Format": "/TargetExecutable={value}",
            "Help": "File name of the program to analyse."
          },
          {
            "Name": "TargetArguments",
            "Type": "string",
            "Format": "/TargetArguments={value}",
            "Help": "Program arguments."
          },
          {
            "Name": "TargetWorkingDirectory",
            "Type": "string",
            "Format": "/TargetWorkingDir={value}",
            "Help": "Program working directory."
          },
          {
            "Name": "TempDirectory",
            "Type": "string",
            "Format": "/TempDir={value}",
            "Help": "Directory for auxiliary files. Set to the system temp by default."
          },
          {
            "Name": "ReportType",
            "Type": "string",
            "Format": "/ReportType={value}",
            "Help": "A type of the report. XML by default."
          },
          {
            "Name": "OutputFile",
            "Type": "string",
            "Format": "/Output={value}",
            "Help": "Resulting report file name."
          },
          {
            "Name": "InheritConsole",
            "Type": "bool",
            "Format": "/InheritConsole={value}",
            "Help": "Lets the analysed application to inherit dotCover console. The default is <c>true</c>. Please note that windows of the analysed GUI application will not be hidden if the console is inherited."
          },
          {
            "Name": "AnalyseTargetArguments",
            "Type": "bool",
            "Format": "/AnalyseTargetArguments={value}",
            "Help": "Specifies whether dotCover should analyse the 'target arguments' string and convert relative paths to absolute ones. The default is <c>true</c>."
          },
          {
            "Name": "Scope",
            "Type": "List<string>",
            "Format": "/Scope={value}",
            "MainSeparator": ";",
            "Help": "Allows including assemblies that were not loaded in the specified scope into coverage results. Ant-style patterns are supported here (e.g. <c>ProjectFolder/**/*.dll</c>)."
          },
          {
            "Name": "Filters",
            "Type": "List<string>",
            "Format": "/Filters={value}",
            "MainSeparator": ";",
            "Help": "Specifies coverage filters using the following syntax: <c>+:module=*;class=*;function=*;</c>. Use <c>-:myassembly</c> to exclude an assembly from code coverage. Asterisk wildcard (*) is supported here."
          },
          {
            "Name": "AttributeFilters",
            "Type": "List<string>",
            "Format": "/AttributeFilters={value}",
            "MainSeparator": ";",
            "Help": "Specifies attribute filters using the following syntax: <c>filter1;filter2;...</c>. Asterisk wildcard (*) is supported here."
          },
          {
            "Name": "DisableDefaultFilters",
            "Type": "bool",
            "Format": "/DisableDefaultFilters",
            "Help": "Disables default (automatically added) filters."
          },
          {
            "Name": "SymbolSearchPaths",
            "Type": "List<string>",
            "Format": "/SymbolSearchPaths={value}",
            "MainSeparator": ";",
            "Help": "Specifies additional symbol search paths. Paths to symbol servers (starting with <i>srv*</i> prefix) are supported here."
          },
          {
            "Name": "AllowSymbolServerAccess",
            "Type": "bool",
            "Format": "/AllowSymbolServerAccess",
            "Help": "Allows dotCover to search for PDB files on a symbol server."
          },
          {
            "Name": "ReturnTargetExitCode",
            "Type": "bool",
            "Format": "/ReturnTargetExitCode",
            "Help": "Returns the exit code of the target executable in case coverage analysis succeeded."
          },
          {
            "Name": "ProcessFilters",
            "Type": "List<string>",
            "Format": "/ProcessFilters={value}",
            "MainSeparator": ";",
            "Help": "Specifies process filters. Syntax: <c>+:process1;-:process2</c>."
          },
          {
            "Name": "HideAutoProperties",
            "Type": "bool",
            "Format": "/HideAutoProperties",
            "Help": "Remove auto-implemented properties from report."
          }
        ]
      }
    }
  ],
  "DataClasses": [],
  "Enumerations": [
    {
      "Name": "DotCoverReportType",
      "Values": [
        "Html",
        "Json",
        "Xml",
        "DetailedXml"
      ]
    }
  ]
}