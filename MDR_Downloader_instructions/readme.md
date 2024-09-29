Trying to use the .NET 8.0 updated version from Steve repositories.


Remove .net 7.0
```
sudo apt remove --purge dotnet-sdk-7.0 dotnet-host-7.0 netstandard-targeting-pack-2.1-7.0
sudo apt autoremove
sudo apt clean
sudo apt update

```
and install 8.0

```
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install dotnet-sdk-8.0
dotnet --version
dotnet --list-sdks 
```

Clone from Steve's repository:
```
git clone git@github.com:scanhamman/MDR_Downloader.git
cd MDR_Downloader
dotnet restore
dotnet build
```

Copy it from somewhere else, e.g.:
```
cp /home/michelescarlato/MDR/MDR_Downloader/appsettings.json /home/michelescarlato/MDR_3/MDR_Downloader/appsettings.json
```
This is the content of the appsettings.json
```
{
  "host": "localhost",
  "user": "postgres",
  "password": "yourpassword",
  "port": 5432,

  "logFilePath": "/home/michelescarlato/MDR_Logs",
  "summaryFilePath": "/home/michelescarlato/MDR_Logs",
  "testFilePath": "/home/michelescarlato/MDR_Data/test",
  "pubmed_api_key": "f79a4bfde8664bc44c6f7fbf7ed92ea8db09",
  "pubmed_api_keyOLD": "68e483d1dd49564f4c8b41418256e2bb6408",
  "pubmed_api_keyAS": "2648fcb68a114f71ac66058bd1cb0b6d"
}
```
Create the required directory according to the appsettings.json:
```
mkdir -p /home/michelescarlato/MDR_Logs/
mkdir -p /home/michelescarlato/MDR_Data/test
```


Then comment the line 184 in LogginHelper (//SendMailMesage();) to prevent the Downloader from execution failures.
```
nano MonitorHelpers/LoggingHelper.cs

# comment this line
//SendMailMesage();
```

build output
```
michelescarlato@krang:~/MDR_Steve/MDR_Downloader$ dotnet build
  Determining projects to restore...
/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c [/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.sln]
  All projects are up-to-date for restore.
/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c
  MDR_Downloader -> /home/michelescarlato/MDR_Steve/MDR_Downloader/bin/Debug/net8.0/MDR_Downloader.dll

Build succeeded.

/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c [/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.sln]
/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c
    2 Warning(s)
    0 Error(s)

Time Elapsed 00:00:04.17
michelescarlato@krang:~/MDR_Steve/MDR_Downloader$ 
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
      "commandLineArgs": "-s 101900 -t 102"
    } 
  }
}
```

This is the Biolincc source_id.

```
michelescarlato@krang:~/MDR_Steve/MDR_Downloader$ dotnet run
/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c
/home/michelescarlato/MDR_Steve/MDR_Downloader/MDR_Downloader.csproj : warning NU1903: Package 'Npgsql' 8.0.2 has a known high severity vulnerability, https://github.com/advisories/GHSA-x9vc-6hfv-hg8c

9/22/2024 : 12:44 PM :   **** INVALID PARAMETERS ****
9/22/2024 : 12:44 PM :   ****** DOWNLOAD ******

9/22/2024 : 12:44 PM :   **** Set up ****
9/22/2024 : 12:44 PM :   Download event Id is 
9/22/2024 : 12:44 PM :   
9/22/2024 : 12:44 PM :   Source_id is 109100
9/22/2024 : 12:44 PM :   Type_id is 114
9/22/2024 : 12:44 PM :   Filter is 10003
9/22/2024 : 12:44 PM :   
9/22/2024 : 12:44 PM :   +++++++++++++++++++++++++++++++++++++++
9/22/2024 : 12:44 PM :   9/22/2024 : 12:44 PM :   ***ERROR*** MDR_Downloader application aborted

9/22/2024 : 12:44 PM :   Object reference not set to an instance of an object.

9/22/2024 : 12:44 PM :      at MDR_Downloader.MonDataLayer.FetchSourceParameters(Int32 source_id) in /home/michelescarlato/MDR_Steve/MDR_Downloader/MonitorHelpers/MonDataLayer.cs:line 34
   at MDR_Downloader.ParameterChecker.CheckArgumentValuesAreValid(Options opts) in /home/michelescarlato/MDR_Steve/MDR_Downloader/TopLevelClasses/ParameterChecker.cs:line 53
9/22/2024 : 12:44 PM :   +++++++++++++++++++++++++++++++++++++++
9/22/2024 : 12:44 PM :   

9/22/2024 : 12:44 PM :   **** Closing Log ****
michelescarlato@krang:~/MDR_Steve/MDR_Downloader$ 
```

To run it with parameters (avoiding using the launchSettings.json), 
```
cd /home/michelescarlato/MDR_Steve/MDR_Downloader/bin/Debug/net8.0
# Biolincc
./MDR_Downloader -s 101900 -t 102
```

```
# Yoda initial
./MDR_Downloader -s 101901 -t 102 -d 2020-09-23
```

```
# ISRCTN
./MDR_Downloader -s 100126 -t 111 -d 2020-09-23
```

```
# ClinicalTrial.gov
./MDR_Downloader -s 100120 -t 111 -d 2020-09-23
```

```
./MDR_Downloader -s 100115  -t 113 -f $HOME/MDR_Sources/WHO/DL/WHODL.csv -d 2020-09-23
```