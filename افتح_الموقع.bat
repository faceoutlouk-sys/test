@echo off
echo جاري تشغيل الموقع...
echo.
cd /d "%~dp0"
start http://localhost:5173
npm run dev
