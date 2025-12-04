@echo off
REM Mock tfsec for Windows PowerShell autograding
REM Reads from stdin and validates deploy.yml content contains 'tfsec'

findstr /I "tfsec" >nul
if %errorlevel%==0 (
  echo TFSec configuration found in workflow
  echo Security scanning is enabled
  exit /b 0
) else (
  echo TFSec configuration not found
  exit /b 1
)
