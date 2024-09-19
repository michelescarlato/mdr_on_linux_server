# mdr_on_linux_server

MDR Downloader - building process:

```
git clone https://github.com/ecrin-github/MDR_Downloader
cd MDR_Downloader/
```

Add the appsettings.json to the `MDR_Downloader/` directory.
Then comment the line 184 in LogginHelper (//SendMailMesage();) to prevent the Downloader from execution failures.
```
nano MDR_Downloader/MonitorHelpers/LoggingHelper.cs

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
