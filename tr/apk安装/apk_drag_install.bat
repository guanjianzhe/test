@echo off   
title ADB Install Apks[By LongLuo(http://blog.csdn.net/tcpipstack/article/details/8698038)]  
goto BEGIN  
  
  
:COMMENT  
echo ##############################################  
rem     adb_install_apks.bat  
rem         By Long.Luo @2013/03/20  
rem       
rem     Description:  
rem         Used to install all the apks in a PATH including   
rem     the subdirs.  
rem   
rem     Version: 2.5  
rem  
echo ##############################################  
pause  
  
  
:BEGIN  
echo.  
echo ################   ��ʼ...    ################   
  
  
:HELP  
rem ���ļ�����batʱ   
if "%~1"=="" echo �뽫apkֱ���Ϸ���bat�ļ���&goto END   
   
echo ע������:  
echo ֧�ֶ�apk�ļ���װ,��ѡ��������Ҫ��װ��apk�϶�����bat�ϣ�   
  
  
:MAIN  
setlocal enabledelayedexpansion   
if not "%~1"=="" (   
  echo.   
  rem �ļ���׺���ж�   
  if /i "%~x1"==".apk" (   
    echo ��װ"%~1"...   
    adb install -r "%~1"  
  ) else (   
    echo �ļ����ʹ��󣺲�֧��%~x1��   
  )   
   
  shift /1   
  goto MAIN   
)   
  
  
:END  
echo.  
echo ################  ȫ��apk�ļ��Ѱ�װ!   ################  
pause  