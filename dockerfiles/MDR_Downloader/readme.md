
# MDR Downloader Docker Image

This Docker setup builds and runs the **MDR Downloader** application written in .NET 8.0, allowing you to pass 
command-line arguments for dynamic behavior. Additionally, logs are managed and stored using Docker volumes, mounted 
to `$HOME/MDR_Logs_Docker_Volume` and `$HOME/MDR_Test` on the host.

## Requirements

- Docker
- Git (if cloning this repository)

## Getting Started

### Clone the MDR Downloader Repository

If you haven't already cloned the MDR Downloader repository, do so:

```bash
git clone https://github.com/michelescarlato/MDR_Downloader.git
```

Make sure you have the `Dockerfile` and `appsettings.json` in the same directory.

### Building the Docker Image

To build the Docker image for **MDR Downloader**:

```bash
docker build -t mdr-downloader-dotnet8 .
```

This will create a Docker image named `mdr-downloader-dotnet8` using .NET 8.0.

## Running the Container with Command-Line Parameters and Volumes

You can run the MDR Downloader with custom parameters by passing them at runtime and mounting two volumes: one for logs and one for test data.

Here is the default command:

```bash
docker run -it --name mdr-downloader-container \
  -v $HOME/MDR_Logs_Docker_Volume:/app/MDR_Logs \
  -v $HOME/MDR_Test:/app/test \
  -v $HOME/MDR_Source:/app/MDR_Sources \
  mdr-downloader-dotnet8 -s 100120 -t 111 -d 2020-09-23
```

### Explanation:

- **Command-line Parameters**: You can change the values for `-s`, `-t`, and `-d` as needed when you run the container.
- **Volumes**:
    - `$HOME/MDR_Logs_Docker_Volume:/app/MDR_Logs`: This volume stores log files generated by the application.
    - `$HOME/MDR_Test:/app/test`: This volume is used for test-related data and resources.

### Managing the Docker Volumes

To store logs and test data, we use two Docker volumes mounted to the appropriate directories in the container.

### Create the Docker Volumes

First, ensure you have the necessary directories on your local machine:

```bash
mkdir -p $HOME/MDR_Logs_Docker_Volume
mkdir -p $HOME/MDR_Test
mkdir -p $HOME/MDR_Source
mkdir -p $HOME/MDR_Data/isrctn/
mkdir -p $HOME/MDR_Data/euctr/
mkdir -p $HOME/MDR_Data/ctg/
mkdir -p $HOME/MDR_Data/biolincc/
mkdir -p $HOME/MDR_Data/pubmed/
mkdir -p $HOME/MDR_Data/yoda/
mkdir -p $HOME/MDR_Data/who/
```

### Mount the Volumes

When running the container, mount the volumes like this:

```bash
docker run -it --name mdr-downloader-container \
  -v $HOME/MDR_Logs_Docker_Volume:/app/MDR_Logs \
  -v $HOME/MDR_Test:/app/test \
  -v $HOME/MDR_Source:/app/MDR_Sources \
  mdr-downloader-dotnet8 -s 100120 -t 111 -d 2020-09-23
```

This maps both Docker volumes to their respective directories in the container:
- Logs are stored in `$HOME/MDR_Logs_Docker_Volume`.
- Test data is stored in `$HOME/MDR_Test`.

### Inspecting the Logs and Test Data

To inspect the logs or test data, navigate to the respective directories on the host:

#### Logs:
```bash
cd $HOME/MDR_Logs_Docker_Volume
ls -la
```

#### Test Data:
```bash
cd $HOME/MDR_Test
ls -la
```

## Cleaning Up

If you need to remove the container after it has stopped, run:

```bash
docker rm mdr-downloader-container
```

## Troubleshooting

- **Container Name Conflict**: If you receive an error that the container name is already in use, remove the existing container or use a different name.
- **Logs or Test Data Not Accessible**: Ensure that the volumes are mounted correctly and that you have permission to access the directories.

## License

This project follows the license of the [MDR Downloader](https://github.com/michelescarlato/MDR_Downloader.git).

UPDATE the approach is currently working, running `docker-compose up`.
The DB is outside the container on the localhost: 192.168.129.14 as set in the appsettings.json.
Password on appsettings.json needs to be set.

```
michelescarlato@krang:~/gitrepo/mdr_on_linux_server/dockerfiles/MDR_Downloader$ docker-compose up
Creating mdr-downloader-container ... done
Attaching to mdr-downloader-container
mdr-downloader-container | 09/26/2024 : 13:09 :   ****** DOWNLOAD ******
mdr-downloader-container | 
mdr-downloader-container | 09/26/2024 : 13:09 :   **** Set up ****
mdr-downloader-container | 09/26/2024 : 13:09 :   Download event Id is 102208
mdr-downloader-container | 09/26/2024 : 13:09 :   
mdr-downloader-container | 09/26/2024 : 13:09 :   Source_id is 100120
mdr-downloader-container | 09/26/2024 : 13:09 :   Type_id is 111
mdr-downloader-container | 09/26/2024 : 13:09 :   Cutoff date is 2020-09-23
mdr-downloader-container | 09/26/2024 : 13:09 :   250 files processed, 0 added, after 10 calls  (out of 10514)
mdr-downloader-container | 09/26/2024 : 13:09 :   500 files processed, 1 added, after 20 calls 
mdr-downloader-container | 09/26/2024 : 13:09 :   750 files processed, 2 added, after 30 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   1000 files processed, 2 added, after 40 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   1250 files processed, 2 added, after 50 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   1500 files processed, 3 added, after 60 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   1750 files processed, 3 added, after 70 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   2000 files processed, 4 added, after 80 calls 
mdr-downloader-container | 09/26/2024 : 13:10 :   2250 files processed, 4 added, after 90 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   2500 files processed, 4 added, after 100 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   2750 files processed, 5 added, after 110 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   3000 files processed, 7 added, after 120 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   3250 files processed, 7 added, after 130 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   3500 files processed, 8 added, after 140 calls 
mdr-downloader-container | 09/26/2024 : 13:11 :   3750 files processed, 8 added, after 150 calls 
mdr-downloader-container | 09/26/2024 : 13:12 :   4000 files processed, 11 added, after 160 calls 
mdr-downloader-container | 09/26/2024 : 13:12 :   4250 files processed, 11 added, after 170 calls 
mdr-downloader-container | 09/26/2024 : 13:12 :   4500 files processed, 11 added, after 180 calls 
```