@echo off

"C:\Program Files\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\msbuild" "..\src\CommandLine.sln" /t:Build /p:Configuration=Debug /v:m /m

dotnet "..\src\CommandLine\bin\Debug\netcoreapp2.1\roslynator.dll" analyze-assembly "C:\Users\Jojo\AppData\Local\Microsoft\VisualStudio\15.0_c8079ba7\Extensions" ^
 --additional-paths "C:\Program Files\Microsoft Visual Studio\2017\Community\Common7\IDE\CommonExtensions\Microsoft\ManagedLanguages\VBCSharp" ^
 --output analyzer-assembly.xml analyzer-assembly.ruleset ^
 --culture en ^
 --verbosity n ^
 --file-log "roslynator.log" ^
 --file-log-verbosity diag

pause
