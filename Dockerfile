FROM mcr.microsoft.com/dotnet/sdk:3.1

ADD . .
RUN dotnet publish -c Release -o /app

WORKDIR /app 
ENTRYPOINT ["dotnet", "dotnet-rpg.dll", "--urls", "\"https://0.0.0.0:5001\""]
