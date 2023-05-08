@echo off 
net session >nul 2>&1

rem "コードを覗くなんて..あなたはエッチですね。"
rem "どうせならコードの説明をしましょうか"
rem ""管理者で実行していない場合プログラムを終了"
rem "管理者で実行している場合相対パスにある"Tor"ディレクトリ配下のファイル群を"C:\Program Files\Tor-system"にコピーを行う"
rem "コピー後、対象のディレクトリにアクセスしtorサービスをインストール"
rem "っていうのを実行していますね。by.NORINORI"
 
if %ERRORLEVEL% equ 0 (
  goto install
) else (
  echo no administrator
  echo please run as administrator
  goto exit
)

:install

mkdir "C:\Program Files\Tor-system"
xcopy %~dp0Tor "C:\Program Files\Tor-system"
cd "C:\Program Files\Tor-system"
start tor.exe --service install
echo Successfully installed tor service

:exit
pause