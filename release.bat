echo off
rem "Member Fields"
set IniFile=0IniFile.ini 
rem ==================

echo 依照ini檔去編寫新同文堂的自訂詞彙匯入設定
echo ########################################################################
echo                                 使用說明:
echo ########################################################################
echo 1. %IniFile% 加入要編寫的詞彙，左邊是中國詞彙，右邊是台灣詞彙
echo 2. 按下任一鍵後，開始編寫設定
pause

rem "Timer Start"
SET A=%TIME%
rem ==================
setlocal enabledelayedexpansion
cd /d %~dp0
if exist README.md del /q README.md
>>README.md set /p="{"version":"","autoConvert":"none","iconAction":"auto","symConvert":true,"inputConvert":"none","fontCustom":{"enable":false,"trad":"PMingLiU,MingLiU,新細明體,細明體","simp":"MS Song,宋体,SimSun"},"urlFilter":{"enable":false,"list":[]},"userPhrase":{"enable":true,"trad":{"  <nul 
for /f "tokens=1*" %%i in (%IniFile%) do (
rem ===複製資料夾===

>>README.md set /p=""%%i":"%%j","  <nul 
)
>>README.md set /p=""分屏":"分割螢幕"},"simp":{}},"contextMenu":{"enable":true}}"  <nul 
rem ==================
