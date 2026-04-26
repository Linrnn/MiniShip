pushd %~dp0..\..\..
@REM set WORKSPACE=..\..\..
set LUBAN_DLL=%cd%\SubModules\luban\src\Luban\bin\Debug\net8.0\Luban.dll
set LUBAN_CONF=%cd%\Tools\Luban\luban.cfg
set OUTPUT_LANG=%cd%\Tools\Luban\Outputs

dotnet %LUBAN_DLL% ^
    -t all ^
    -d text-list ^
    --conf %LUBAN_CONF% ^
	--validationFailAsError ^
    -x outputDataDir=%OUTPUT_LANG% ^
	-x l10n.textListFile=lang_list.txt

pause