#!/bin/sh
curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, FALSE)
curl -sSL https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c 6.0 -InstallDir ./dotnet6
./dotnet6/dotnet --version
./dotnet6/dotnet publish -c Release -o output
