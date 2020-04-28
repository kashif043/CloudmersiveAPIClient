$csprojpath = Resolve-Path ./client/src/Cloudmersive.APIClient.NET.DocumentAndDataConvert/Cloudmersive.APIClient.NET.DocumentAndDataConvert.csproj
$csprojtestpath = Resolve-Path ./client/src/Cloudmersive.APIClient.NET.DocumentAndDataConvert.Test/Cloudmersive.APIClient.NET.DocumentAndDataConvert.Test.csproj
$nuspecpath = Resolve-Path ./client/src/Cloudmersive.APIClient.NET.DocumentAndDataConvert/Cloudmersive.APIClient.NET.DocumentAndDataConvert.nuspec
$slnpath = Resolve-Path ./client/Cloudmersive.APIClient.NET.DocumentAndDataConvert.sln


./nuget.exe restore $csprojpath -SolutionDirectory ./client

./nuget.exe restore $csprojtestpath -SolutionDirectory ./client

C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe $slnpath /t:rebuild 

./nuget.exe pack $csprojpath