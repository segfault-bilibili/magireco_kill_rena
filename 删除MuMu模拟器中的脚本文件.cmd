@echo off
cd /d %~dp0
@echo ��Ҫɾ��֮ǰ���Ƶ�ģ�����ڵĽű��ļ���busybox��bc�ȹ��ߣ�
@echo ����Ҫȡ������tmpfs
@echo �뿪��MuMuģ������rootȨ��
pause
adb connect 127.0.0.1:7555 || goto END
adb shell "umount /data/local/tmp/tmpfs"
adb shell "rmdir /data/local/tmp/tmpfs"
adb shell "rm -fr /data/local/tmp/rena_killer_bin"
@echo ��������

:END
pause
exit /b