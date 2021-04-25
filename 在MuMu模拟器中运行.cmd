@echo off
cd /d %~dp0

@echo ----------------------------------------------------------------
@echo +                segfault自用国服魔纪杀水波脚本                +
@echo ----------------------------------------------------------------
@echo +  一开始是在真机上跑的，后来试了网易MuMu模拟器（32位）也能跑  +
@echo +                      而且比真机更快……                      +
@echo +     如果你用的不是MuMu模拟器（32位），或者要在真机上跑，     +
@echo +                   那不好意思，请自己研究吧                   +
@echo ----------------------------------------------------------------
@echo +      即便你也是MuMu模拟器，也不保证你也可以用……sorry       +
@echo ----------------------------------------------------------------

pause

@echo ----------------------------------------------------------------
@echo +         魔法少女经验升级、事件等级升级，以及玩家升级         +
@echo +              这些情况我都碰到过，然后我就截图了              +
@echo +                         然后像素取色                         +
@echo +        再然后，这个脚本就可以全自动点掉这些升级提示了        +
@echo ----------------------------------------------------------------
@echo +            脚本会优先选互相关注的好友，然后选NPC             +
@echo +      （偶尔好友关注图标没刷出来就会选NPC，这无关痛痒）       +
@echo +                      不会选单向关注好友                    

pause

@echo ----------------------------------------------------------------
@echo +        脚本会自动吃AP药，先吃绿药、后吃红药、然后碎钻        +
@echo +                      默认不吃药、不碎钻                      +
@echo ----------------------------------------------------------------
@echo +       之前因为作者自己舍不得碎钻，所以暂时没写碎钻逻辑       +
@echo +             现在补上了碎钻逻辑，但是没仔细测试过             +
@echo ----------------------------------------------------------------
@echo +            而且自动吃药只在主线2-1-4这一关可以用             +
@echo +            如果没有手动选到这一关，就不能自动吃药            +

@echo ----------------------------------------------------------------
@echo +       AP是按照减半期间，主线剧情2-1-4每局消耗3AP估算的       +
@echo +        如果不是减半期间，或者是其他AP消耗更高的关卡，        +
@echo +          那这个脚本输出的AP消耗估计值就肯定不对……          +
@echo +              不过你仍然可以设置要消耗的最大AP值              +
@echo +           【循环周回数】乘以【关卡实际AP消耗量】，           +
@echo +                      就是这里要设置的：                      +

set SHELLCMD=/data/local/tmp/rena_killer_bin/magireco_kill_rena.sh
set /p AP_TARGET=要消耗的最大AP值=
set SHELLCMD=%SHELLCMD% AP_TARGET=%AP_TARGET%

@echo ----------------------------------------------------------------
@echo +              最大AP值消耗完后，脚本就会停止运行              +
@echo +  在此基础上，你还可以再设置【要消耗的最大绿药（+50AP）瓶数】 +

set /p MAX_GREEN_AP_DRUG=要消耗的最大绿药（+50AP）瓶数=
set SHELLCMD=%SHELLCMD% MAX_GREEN_AP_DRUG=%MAX_GREEN_AP_DRUG%

@echo +          以及【要消耗的最大红药（+当前AP上限）瓶数】         +

set /p MAX_RED_AP_DRUG=要消耗的最大红药（+当前AP上限）瓶数=
set SHELLCMD=%SHELLCMD% MAX_RED_AP_DRUG=%MAX_RED_AP_DRUG%

@echo +   如果你愿意碎钻，【要消耗的最大魔法石（+当前AP上限）个数】  +

set /p MAX_MAGICAL_STONE_AP_DRUG=要消耗的最大魔法石（+当前AP上限）个数=
set SHELLCMD=%SHELLCMD% MAX_MAGICAL_STONE_AP_DRUG=%MAX_MAGICAL_STONE_AP_DRUG%

@echo +           吃完这些药、碎完这些钻，脚本也会停止运行           +

pause

@echo ----------------------------------------------------------------
@echo +            这个脚本不能识别控件，纯靠截图像素取色            +
@echo +                 点击位置的XY坐标值也是写死的                 +
@echo +                以前屏幕分辨率必须修改为固定值                +
@echo +                      现在加了换算的逻辑                      +
@echo +               即便这样也不好说会不会出岔子……               +
@echo +               我自己就在AP药选择界面上被坑过，               +
@echo +    脚本误判为药已全部吃完，就退出了，白挂了好几个小时……    +
@echo +           这个地方我已经改了，但愿不会再掉坑里……           +
@echo ----------------------------------------------------------------
@echo +      请最好将MuMu模拟器的屏幕分辨率设为1920x1080 480DPI      +
@echo +                  并开启MuMu模拟器的root权限                  +
@echo +                然后进入游戏的开局助战选择界面                +
@echo ----------------------------------------------------------------
@echo +                   root权限用于挂载tmpfs，                    +
@echo +          这样截图文件就不会写入闪存或硬盘，避免磨损          +

pause
adb connect 127.0.0.1:7555 || goto END
adb shell "mkdir -p /data/local/tmp/rena_killer_bin/"
adb push magireco_kill_rena.sh /data/local/tmp/rena_killer_bin/magireco_kill_rena.sh
REM powershell -command "iwr -uri https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/blob/13cd7384b2dc454a692730f0a079677f6da3e559/bc/bc-x86"
REM powershell -command "iwr -uri https://github.com/Magisk-Modules-Repo/busybox-ndk/blob/55a9c23fb54fe51d05263d5eac9b5be10177003f/busybox-x86-selinux"
adb push busybox-x86-selinux /data/local/tmp/rena_killer_bin/busybox
adb push bc-x86 /data/local/tmp/rena_killer_bin/bc
adb shell "chmod 755 /data/local/tmp/rena_killer_bin/*"
adb shell "/data/local/tmp/rena_killer_bin/busybox --install -s /data/local/tmp/rena_killer_bin/"

@echo ----------------------------------------------------------------
@echo +                  脚本将会在新窗口中开始运行                  +
@echo +       在新窗口中按CTRL+C可以停止运行，但暂不会关闭窗口       +
@echo +                     再按回车即可关闭窗口                     +
@echo +         新窗口中显示的信息有助于折腾（划掉）排除问题         +

pause
start adb-stdin-raw shell %SHELLCMD%

@echo ----------------------------------------------------------------
@echo +                     脚本不在本窗口内运行                     +

:END
@echo +                      按任意键关闭本窗口                      +

pause
exit /b