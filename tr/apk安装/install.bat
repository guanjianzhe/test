@echo off

:: ����adb ��֤��˳������
adb kill-server
adb start-server

adb wait-for-device

:: ����ApkPathĿ¼�µ��ļ������а�װ
:: %cd% ��ʾ��ǰĿ¼������ű�������ǵ�ǰĿ¼�� APKs��Ŀ¼�µ��ļ�
:: ���Ը����Լ��������޸�

set ApkPath=%cd%\APKs
cd %ApkPath%

for /R %%s in (.,*) do (
	::Ҫʹ������������apk��·������Ȼadb install�﷨����
	adb install "%%s"
)

adb push ..\white_paper.jpg /sdcard/Pictures/
adb push ..\white_paper.jpg /sdcard/Movies/
::adb push C:\Users\guanjianzhe\Desktop\apps\white_paper.jpg /sdcard/Pictures/
::adb push C:\Users\guanjianzhe\Desktop\apps\white_paper.jpg /sdcard/Movies/

adb push ..\diyinwang.mp3 /sdcard/Music/
::adb push C:\Users\guanjianzhe\Desktop\apps\diyinwang.mp3 /sdcard/Music/

::adb push ..\1080P.avi /sdcard/Movies/
::adb push C:\Users\guanjianzhe\Desktop\apps\1080P.avi /sdcard/Movies/

:: ִ���꣬cmd��������
pause