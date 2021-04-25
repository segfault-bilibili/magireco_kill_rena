@echo off
cd /d %~dp0
@echo 将要删除之前复制到模拟器内的脚本文件和busybox、bc等工具，
@echo 并且要取消挂载tmpfs
@echo 请开启MuMu模拟器的root权限
pause
adb connect 127.0.0.1:7555 || goto END
adb shell "umount /data/local/tmp/tmpfs"
adb shell "rmdir /data/local/tmp/tmpfs"
adb shell "rm -fr /data/local/tmp/rena_killer_bin"
@echo 操作结束

:END
pause
exit /b