# mdr_on_linux_server

MDR Downloader - building process:

```
git clone https://github.com/ecrin-github/MDR_Downloader
cd MDR_Downloader/
```

Add the `appsettings.json` (which includes also the DB credentials) to the `MDR_Downloader/` directory.

Copy it from somewhere else, e.g.:
```
cp /home/michelescarlato/MDR/MDR_Downloader/appsettings.json /home/michelescarlato/MDR_3/MDR_Downloader/appsettings.json
```

Then comment the line 184 in LogginHelper (//SendMailMesage();) to prevent the Downloader from execution failures.
```
nano MonitorHelpers/LoggingHelper.cs

# comment this line
//SendMailMesage();
```

Then `build` the project, checking first which `JDK` and which `dotnet` `version` are running.
Dotnet `restore` is typically run before building the project to ensure all dependencies are in place. 

```
dotnet --list-sdks 
dotnet --version
dotnet restore
dotnet build
```

Change the source to download with:

```
nano Properties/launchSettings.json
```

```
{
  "profiles": {
    "MDR_Downloader": {
      "commandName": "Project",
      "commandLineArgs": "-s 109100 -t 114 -q 10003  -d \"2023-11-09\"  "
    } 
  }
}
```

109100 is Biolincc, by default there will be PubMed 100135.