# Use the official .NET 8.0 SDK image for building the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

# Set the working directory inside the container
WORKDIR /app

# Install Git to clone the repository
RUN apt-get update && apt-get install -y git

# Clone the MDR Downloader repository
RUN git clone https://github.com/michelescarlato/MDR_Downloader.git .

# Copy appsettings.json from the Docker build context to the app directory
COPY appsettings.json /app/

# Copy MDR_Source directory from the Docker build context to the app directory
COPY MDR_Source /app/MDR_Sources

# Ensure all required directories exist
RUN mkdir -p /app/isrctn /app/other_needed_directories

# Restore NuGet packages
RUN dotnet restore

# Build the project in Release mode
RUN dotnet build --configuration Release

# Publish the application to a folder
RUN dotnet publish -c Release -o /app/out

# Use a smaller runtime image to run the application
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set the working directory inside the runtime image
WORKDIR /app

# Copy the build output from the SDK image
COPY --from=build-env /app/out .

# Copy appsettings.json to the runtime environment
COPY appsettings.json /app/

# Ensure directories exist in the runtime environment
RUN mkdir -p /app/isrctn

# Command to run the application with dynamic parameters
ENTRYPOINT ["dotnet", "MDR_Downloader.dll"]
