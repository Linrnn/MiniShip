pushd %~dp0..\..
REM set WORKSPACE=..\..
set LUBAN_DLL=%cd%\SubModules\luban\src\Luban\bin\Debug\net8.0\Luban.dll
set LUBAN_CONF=%cd%\Tools\Luban\gen.cfg
set OUTPUT_DATA=%cd%\Assets\RawResource\Config
set OUTPUT_CODE=%cd%\Assets\Scripts\Config\Gen
set INPUT_LANG=%cd%\Tools\Luban\Datas\lang@__table__.xlsx

dotnet %LUBAN_DLL% ^
    -t all ^
    -c cs-simple-json ^
    -d json ^
    --conf %LUBAN_CONF% ^
    -x outputDataDir=%OUTPUT_DATA% ^
    -x outputCodeDir=%OUTPUT_CODE% ^
    -x l10n.provider=default ^
    -x l10n.textFile.path=%INPUT_LANG% ^
    -x l10n.textFile.keyFieldName=key
    REM -x l10n.textFile.languageFieldName=zh_cn ^
    REM -x l10n.convertTextKeyToValue=1

pause