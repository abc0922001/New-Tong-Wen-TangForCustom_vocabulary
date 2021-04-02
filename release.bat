echo off
rem "Member Fields"
set IniFile=0IniFile.ini 
set ReleaseFile=tongwentang-pref.json
chcp 65001
rem ==================

echo 依照ini檔去編寫新同文堂的自訂詞彙匯入設定
echo ########################################################################
echo                                 使用說明:
echo ########################################################################
echo 1. %IniFile% 加入要編寫的詞彙，左邊是中國詞彙，右邊是台灣詞彙
echo 2. 按下任一鍵後，開始編寫設定
pause

rem ==================
setlocal enabledelayedexpansion
cd /d %~dp0
if exist %ReleaseFile% del /q %ReleaseFile%

rem header
>>%ReleaseFile% set /p="{"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "filter": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "enabled": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "rules": []"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "general": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "autoConvert": "disabled","<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "browserAction": "auto","<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "debugMode": false,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "defaultTarget": "s2t","<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "spaMode": true"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "menu": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "enabled": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "group": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "textarea": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "s2t": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "t2s": true"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "webpage": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "s2t": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "t2s": true"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      }"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    }"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "meta": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "update": 1617374678851"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "version": 2,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  "word": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "custom": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "s2t": {"<nul
>>%ReleaseFile% echo.<nul

for /f "tokens=1*" %%i in (%IniFile%) do (
rem ===release===

>>%ReleaseFile% set /p=""%%i": "%%j","<nul
>>%ReleaseFile% echo.<nul
)

rem boom
>>%ReleaseFile% set /p=""分屏": "分割螢幕""<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "t2s": {}"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    "default": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "s2t": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "char": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "phrase": true"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      },"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      "t2s": {"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "char": true,"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="        "phrase": true"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="      }"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="    }"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="  }"<nul
>>%ReleaseFile% echo.<nul
>>%ReleaseFile% set /p="}"<nul
>>%ReleaseFile% echo.<nul
rem ==================
