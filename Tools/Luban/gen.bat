pushd %~dp0..\..
@REM set WORKSPACE=..\..
set LUBAN_DLL=%cd%\SubModules\luban\src\Luban\bin\Debug\net8.0\Luban.dll
set LUBAN_CONF=%cd%\Tools\Luban\gen.cfg
set OUTPUT_DATA=%cd%\Assets\RawResource\Config
set OUTPUT_CODE=%cd%\Assets\Scripts\Cfg\Gen

dotnet %LUBAN_DLL% ^
    -t all ^
    -c cs-simple-json ^
    -d json ^
    --conf %LUBAN_CONF% ^
    -x outputDataDir=%OUTPUT_DATA% ^
    -x outputCodeDir=%OUTPUT_CODE%

pause