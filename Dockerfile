FROM mcr.microsoft.com/dotnet/sdk:3.1

WORKDIR /dotnet-rpg
ADD dotnet-rpg.csproj .
RUN dotnet restore

ADD . .
RUN dotnet publish -c Release -o /out

WORKDIR /out 
ENTRYPOINT ["dotnet", "dotnet-rpg.dll", "--urls", "\"https://0.0.0.0:5001\""]
