echo off
rem "Member Fields"
set IniFile=0IniFile.ini 
set ReleaseFile=README.md
rem ==================

echo �̷�ini�ɥh�s�g�s�P��󪺦ۭq���J�פJ�]�w
echo ########################################################################
echo                                 �ϥλ���:
echo ########################################################################
echo 1. %IniFile% �[�J�n�s�g�����J�A����O������J�A�k��O�x�W���J
echo 2. ���U���@���A�}�l�s�g�]�w
pause

rem ==================
setlocal enabledelayedexpansion
cd /d %~dp0
if exist %ReleaseFile% del /q %ReleaseFile%
>>%ReleaseFile% set /p="{"version":"","autoConvert":"none","iconAction":"auto","symConvert":true,"inputConvert":"none","fontCustom":{"enable":false,"trad":"PMingLiU,MingLiU,�s�ө���,�ө���","simp":"MS Song,���^,SimSun"},"urlFilter":{"enable":false,"list":[]},"userPhrase":{"enable":true,"trad":{"  <nul 
for /f "tokens=1*" %%i in (%IniFile%) do (
rem ===�ƻs��Ƨ�===

>>%ReleaseFile% set /p=""%%i":"%%j","  <nul 
)
>>%ReleaseFile% set /p=""����":"���οù�"},"simp":{}},"contextMenu":{"enable":true}}"  <nul 
rem ==================
