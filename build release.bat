@echo off
path=%path%;"C:\Program Files\WinRAR"
title File Builder
if NOT EXIST release md release
echo [BatPPT Release Builder] -by Icy
echo ���������ʼbuild
set /a a=1
pause >nul
:start
echo [�� %a% ��build]
set /a a=%a%+1
rar a pack.rar pack
rd /s /q release
md release
echo Start...
copy /b main.bat+pack.rar "release\batppt.bat"
echo OK��release�ļ���batppt.bat����������release�ļ�����
del pack.rar
echo (��������ؽ�)
pause >nul
cls
goto start