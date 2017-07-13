{
  "License": [
    "Copyright Matthias Koch 2017.",
    "Distributed under the MIT License.",
    "https://github.com/nuke-build/tools/blob/master/LICENSE"
  ],
  "References": [
    "https://github.com/nunit/docs/wiki/Console-Command-Line#//div[@id='wiki-body']"
  ],
  "Name": "Nunit3",
  "OfficialUrl": "https://www.nunit.org/",
  "Help": "NUnit is a unit-testing framework for all .Net languages. Initially ported from <a href=\"http://www.junit.org/\">JUnit</a>, the current production release, version 3.0, has been completely rewritten with many new features and support for a wide range of .NET platforms.",
  "PackageId": "NUnit.ConsoleRunner",
  "PackageExecutable": "nunit-console.exe",
  "IconClass": "bug2",
  "Tasks": [
    {
      "SettingsClass": {
        "Properties": [
          {
            "Name": "InputFiles",
            "Type": "List<string>",
            "Format": "{value}",
            "CreateOverload": true,
            "Help": "<p>The console program must always have an assembly or project specified. Assemblies are specified by file name or path, which may be absolute or relative. Relative paths are interpreted based on the current directory.</p><p>In addition to assemblies, you may specify any project type that is understood by NUnit. Out of the box, this includes various Visual Studio project types as well as NUnit (.nunit) test projects (see <a href=\"https://github.com/nunit/docs/wiki/NUnit-Test-Projects\">NUnit Test Projects</a> for a description of NUnit test projects).</p><p>If the NUnit V2 framework driver is installed, test assemblies may be run based on any version of the NUnit framework beginning with 2.0. Without the V2 driver, only version 3.0 and higher tests may be run.</p>"
          },
          {
            "Name": "Tests",
            "Type": "List<string>",
            "Format": "--test={value}",
            "MainSeparator": ",",
            "Help": "Comma-separated list of names of tests to run or explore. This option may be repeated. Note that this option is retained for backward compatibility. The --where option can now be used instead."
          },
          {
            "Name": "TestListFile",
            "Type": "string",
            "Format": "--testlist={value}",
            "Help": "The name (or path) of a file containing a list of tests to run or explore, one per line."
          },
          {
            "Name": "WhereExpression",
            "Type": "string",
            "Format": "--where={value}",
            "Help": "An expression indicating which tests to run. It may specify test names, classes, methods, catgories or properties comparing them to actual values with the operators ==, !=, =~ and !~. See Test Selection Language for a full description of the syntax."
          },
          {
            "Name": "Parameters",
            "Type": "Dictionary<string, string>",
            "Format": "--params={value}",
            "KeyValueSeparator": "=",
            "Help": "A test parameter specified in the form NAME=VALUE. Multiple parameters may be specified, separated by semicolons or by repeating the --params option multiple times."
          },
          {
            "Name": "Configuration",
            "Type": "string",
            "Format": "--config={value}",
            "Help": "Name of a project configuration to load (e.g.: Debug)."
          },
          {
            "Name": "Process",
            "Type": "NunitProcessType?",
            "Format": "--process={value}",
            "Help": "Process isolation for test assemblies. Values: Single, Separate, Multiple. If not specified, defaults to Separate for a single assembly or Multiple for more than one. By default, processes are run in parallel."
          },
          {
            "Name": "InProcess",
            "Type": "bool",
            "Format": "--inprocess",
            "Help": "This option is a synonym for --process=Single"
          },
          {
            "Name": "Agents",
            "Type": "int?",
            "Format": "--agents={value}",
            "Help": "Number of agents that may be allowed to run simultaneously assuming you are not running inprocess. If not specified, all agent processes run tests at the same time, whatever the number of assemblies. This setting is used to control running your assemblies in parallel."
          },
          {
            "Name": "Domain",
            "Type": "string",
            "Format": "--domain={value}",
            "Help": "Domain isolation for test assemblies. Values: None, Single, Multiple. If not specified, defaults to Single for a single assembly or Multiple for more than one."
          },
          {
            "Name": "Framework",
            "Type": "string",
            "Format": "--framework={value}",
            "Help": "Framework type/version to use for tests. Examples: mono, net-4.5, v4.0, 2.0, mono-4.0"
          },
          {
            "Name": "X86",
            "Type": "bool",
            "Format": "--x86",
            "Help": "Run tests in a 32-bit process on 64-bit systems."
          },
          {
            "Name": "DisposeRunners",
            "Type": "bool",
            "Format": "--dispose-runners",
            "Help": "Dispose each test runner after it has finished running its tests"
          },
          {
            "Name": "Timeout",
            "Type": "int",
            "Format": "--timeout={value}",
            "Help": "Set timeout for each test case in milliseconds."
          },
          {
            "Name": "Seed",
            "Type": "int",
            "Format": "--seed={value}",
            "Help": "Set the random seed used to generate test cases."
          },
          {
            "Name": "Workers",
            "Type": "int",
            "Format": "--workers={value}",
            "Help": "Specify the number of worker threads to be used in running tests. This setting is used to control running your tests in parallel and is used in conjunction with the Parallelizable Attribute. If not specified, workers defaults to the number of processors on the machine, or 2, whichever is greater."
          },
          {
            "Name": "StopOnError",
            "Type": "bool",
            "Format": "--stoponerror",
            "Help": "Stop run immediately upon any test failure or error."
          },
          {
            "Name": "SkipNonTestAssemblies",
            "Type": "bool",
            "Format": "--skipnontestassemblies",
            "Help": "Skip any non-test assemblies specified, without error."
          },
          {
            "Name": "Debug",
            "Type": "bool",
            "Format": "--debug",
            "Help": "Causes NUnit to break into the debugger immediately before it executes your tests. This is particularly useful when the tests are running in a separate process to which you would otherwise have to attach."
          },
          {
            "Name": "DebugAgent",
            "Type": "bool",
            "Format": "--debug-agent",
            "Help": "Available only in debug builds of NUnit, this option is for use by developers in debugging the nunit-agent itself. It breaks in the agent code immediately upon entry of the process."
          },
          {
            "Name": "Pause",
            "Type": "bool",
            "Format": "--pause",
            "Help": "Causes NUnit to immediately open a message box, allowing you to attach a debugger. For cases where --debug does not work."
          },
          {
            "Name": "Wait",
            "Type": "bool",
            "Format": "--wait",
            "Help": "Wait for input before closing console window."
          },
          {
            "Name": "WorkPath",
            "Type": "string",
            "Format": "--work={value}",
            "Help": "Path of the directory to use for output files."
          },
          {
            "Name": "OutputFile",
            "Type": "string",
            "Format": "--output={value}",
            "Help": "File path to contain text output from the tests."
          },
          {
            "Name": "ErrorFile",
            "Type": "string",
            "Format": "--err={value}",
            "Help": "File path to contain error output from the tests."
          },
          {
            "Name": "Results",
            "Type": "List<string>",
            "Format": "--result={value}",
            "Help": "An output spec for saving the test results. This option may be repeated."
          },
          {
            "Name": "Explores",
            "Type": "List<string>",
            "Format": "--explore={value}",
            "Help": "Display or save test info rather than running tests. Optionally provide an output spec for saving the test info. This option may be repeated."
          },
          {
            "Name": "NoResults",
            "Type": "bool",
            "Format": "--noresult",
            "Help": "Don't save any test results."
          },
          {
            "Name": "Labels",
            "Type": "NunitLabelType?",
            "Format": "--labels={value}",
            "Help": "Specify whether to write test case names to the output. Values: Off, On, All"
          },
          {
            "Name": "Trace",
            "Type": "NunitTraceLevel?",
            "Format": "--trace={value}",
            "Help": "Set internal trace LEVEL. Values: Off, Error, Warning, Info, Verbose (Debug)"
          },
          {
            "Name": "Encoding",
            "Type": "string",
            "Format": "--encoding={value}",
            "Help": "Specify the console codepage, such as utf-8, ascii, etc. This option is not normally needed unless your output includes special characters. The page specified must be available on the system."
          },
          {
            "Name": "ShadowCopy",
            "Type": "bool",
            "Format": "--shadowcopy",
            "Help": "Tells .NET to copy loaded assemblies to the shadowcopy directory."
          },
          {
            "Name": "TeamCity",
            "Type": "bool",
            "Format": "--teamcity",
            "Help": "Turns on use of TeamCity service messages."
          },
          {
            "Name": "LoadUserProfile",
            "Type": "bool",
            "Format": "--loaduserprofile",
            "Help": "Causes the user profile to be loaded in any separate test processes."
          },
          {
            "Name": "ListExtensions",
            "Type": "bool",
            "Format": "--list-extensions",
            "Help": "Lists all extension points and the extensions installed on each of them."
          },
          {
            "Name": "SetPrincipalPolicy",
            "Type": "NunitPrincipalPolicy?",
            "Format": "--set-principal-policy={value}",
            "Help": "Set the principal policy for the test domain to POLICY. Values: UnauthenticatedPrincipal, NoPrincipal, WindowsPrincipal"
          },
          {
            "Name": "NoHeader",
            "Type": "bool",
            "Format": "--noheader",
            "Help": "Suppress display of program information at start of run."
          },
          {
            "Name": "NoColor",
            "Type": "bool",
            "Format": "--nocolor",
            "Help": "Displays console output without color."
          }
        ]
      }
    }
  ],
  "DataClasses": [],
  "Enumerations": [
    {
      "Name": "NunitProcessType",
      "Values": [
        "Single",
        "Separate",
        "Multiple"
      ]
    },
    {
      "Name": "NunitPrincipalPolicy",
      "Values": [
        "UnauthenticatedPrincipal",
        "NoPrincipal",
        "WindowsPrincipal"
      ]
    },
    {
      "Name": "NunitLabelType",
      "Values": [
        "Off",
        "On",
        "All"
      ]
    },
    {
      "Name": "NunitTraceLevel",
      "Values": [
        "Off",
        "Error",
        "Warning",
        "Info",
        "Verbose"
      ]
    }
  ]
}