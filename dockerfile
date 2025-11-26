FROM mcr.microsoft.com/dotnet/sdk:8.0

WORKDIR /app

# Create a new console project
RUN dotnet new console -n HelloApp -o /app/src

# Replace the auto-generated Program.cs with your file
COPY something.cs /app/src/Program.cs

WORKDIR /app/src

RUN dotnet restore
RUN dotnet build -c Release

CMD ["dotnet", "run"]
