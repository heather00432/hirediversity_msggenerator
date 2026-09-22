@echo off
setlocal
cd /d "%~dp0"

docker compose up -d
if errorlevel 1 (
  echo Docker 실행에 실패했습니다. Docker Desktop이 설치되어 있고 실행 중인지 확인해 주세요.
  pause
  exit /b 1
)

start "" "http://localhost:8080/index.html"
echo 앱과 LibreTranslate가 실행되었습니다.
