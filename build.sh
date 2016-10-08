#!/bin/bash
DIR=`dirname $0`

/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet restore $DIR/../azure-sf-csharp/src/azure-sf-csharp/AzureStatelessService/project.json -s /opt/microsoft/sdk/servicefabric/csharp/packages -s https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet build $DIR/../azure-sf-csharp/src/azure-sf-csharp/AzureStatelessService/project.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet publish $DIR/../azure-sf-csharp/src/azure-sf-csharp/AzureStatelessService/project.json -o $DIR/../azure-sf-csharp/azure-sf-csharp/AzureStatelessServicePkg/Code

