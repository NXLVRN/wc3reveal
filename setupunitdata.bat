:: change directory to wc3reveal base folder
cd %~dp0 
@echo off
echo Now copying unidata folder and file to Warcraft 3 _retail_ folder
:: copy the unitdata folder and file to Warcraft 3: Reforged installation folder 
:: if your Warcraft 3 is installed somewhere other than "C:\Program Files (x86)\Warcraft III\_retail_" 
:: you need to edit the first argument to xcopy below to point to your Wacraft 3\_retail_ folder
Xcopy ".\partial\" "C:\Program Files (x86)\Warcraft III\_retail_" /E /H /C /I
echo Done
pause