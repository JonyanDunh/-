@echo off
title APNG to GIF to WEBP by YIU
color 3e
echo.
echo.
:op
if "%~1"=="" (
 echo.
 echo ����
 echo.
 echo ���ͼƬ�Ϸŵ�����ļ��ϡ������Ǵ�
 echo.
 echo ֧��ͼƬת����ʽ��
 echo  	.gif        ^-^>  .webp
 echo 	.webp       ^-^>  .gif
 echo 	.png^(apng^)  ^-^>  .gif
 timeout /t 8 >nul
 goto :eof
)

for %%i in (%*) do (
if not exist %%~si\NUL (
 if /i %%~xi==.webp (
  %~dp0g2wbin\webp2gif %%i
 ) ^
 else if /i %%~xi==.gif (
  %~dp0g2wbin\gif2webp -q 97 -m 5 -loop_compatibility -mt %%i -o "%%~ni.webp"
 ) ^
 else if /i %%~xi==.png (
  %~dp0g2wbin\apng2gif %%i
 )
)
)
echo.
echo.
echo ת����ɣ�
timeout /t 3 >nul