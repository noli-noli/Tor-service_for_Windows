@echo off

rem "コードを覗くなんて..あなたはエッチですね。"
rem "どうせならコードの説明をしましょうか"
rem "管理者で実行していない場合プログラムを終了"
rem "torサービスを停止"
rem "torサービスを削除"
rem "関連しているファイル群をディレクトリ毎削除"
rem "っていうのを実行していますね。by.NORINORI"

net session >nul 2>&1
 
if %ERRORLEVEL% equ 0 (
  goto Uninstall
) else (
  echo no administrator
  echo please run as administrator
  goto exit
)

:Uninstall
net stop tor
sc delete tor
rd  /s /q "C:\Program Files\tor-system"
echo removed the service


:exit
pause