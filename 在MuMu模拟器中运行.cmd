@echo off
cd /d %~dp0

@echo ----------------------------------------------------------------
@echo +                segfault���ù���ħ��ɱˮ���ű�                +
@echo ----------------------------------------------------------------
@echo +  һ��ʼ����������ܵģ�������������MuMuģ������32λ��Ҳ����  +
@echo +                      ���ұ�������졭��                      +
@echo +     ������õĲ���MuMuģ������32λ��������Ҫ��������ܣ�     +
@echo +                   �ǲ�����˼�����Լ��о���                   +
@echo ----------------------------------------------------------------
@echo +      ������Ҳ��MuMuģ������Ҳ����֤��Ҳ�����á���sorry       +
@echo ----------------------------------------------------------------

pause

@echo ----------------------------------------------------------------
@echo +         ħ����Ů�����������¼��ȼ��������Լ��������         +
@echo +              ��Щ����Ҷ���������Ȼ���Ҿͽ�ͼ��              +
@echo +                         Ȼ������ȡɫ                         +
@echo +        ��Ȼ������ű��Ϳ���ȫ�Զ������Щ������ʾ��        +
@echo ----------------------------------------------------------------
@echo +            �ű�������ѡ�����ע�ĺ��ѣ�Ȼ��ѡNPC             +
@echo +      ��ż�����ѹ�עͼ��ûˢ�����ͻ�ѡNPC�����޹�ʹ����       +
@echo +                      ����ѡ�����ע����                    

pause

@echo ----------------------------------------------------------------
@echo +        �ű����Զ���APҩ���ȳ���ҩ����Ժ�ҩ��Ȼ������        +
@echo +                      Ĭ�ϲ���ҩ��������                      +
@echo ----------------------------------------------------------------
@echo +       ֮ǰ��Ϊ�����Լ��᲻�����꣬������ʱûд�����߼�       +
@echo +             ���ڲ����������߼�������û��ϸ���Թ�             +
@echo ----------------------------------------------------------------
@echo +            �����Զ���ҩֻ������2-1-4��һ�ؿ�����             +
@echo +            ���û���ֶ�ѡ����һ�أ��Ͳ����Զ���ҩ            +

@echo ----------------------------------------------------------------
@echo +       AP�ǰ��ռ����ڼ䣬���߾���2-1-4ÿ������3AP�����       +
@echo +        ������Ǽ����ڼ䣬����������AP���ĸ��ߵĹؿ���        +
@echo +          ������ű������AP���Ĺ���ֵ�Ϳ϶����ԡ���          +
@echo +              ��������Ȼ��������Ҫ���ĵ����APֵ              +
@echo +           ��ѭ���ܻ��������ԡ��ؿ�ʵ��AP����������           +
@echo +                      ��������Ҫ���õģ�                      +

set SHELLCMD=/data/local/tmp/rena_killer_bin/magireco_kill_rena.sh
set /p AP_TARGET=Ҫ���ĵ����APֵ=
set SHELLCMD=%SHELLCMD% AP_TARGET=%AP_TARGET%

@echo ----------------------------------------------------------------
@echo +              ���APֵ������󣬽ű��ͻ�ֹͣ����              +
@echo +  �ڴ˻����ϣ��㻹���������á�Ҫ���ĵ������ҩ��+50AP��ƿ���� +

set /p MAX_GREEN_AP_DRUG=Ҫ���ĵ������ҩ��+50AP��ƿ��=
set SHELLCMD=%SHELLCMD% MAX_GREEN_AP_DRUG=%MAX_GREEN_AP_DRUG%

@echo +          �Լ���Ҫ���ĵ�����ҩ��+��ǰAP���ޣ�ƿ����         +

set /p MAX_RED_AP_DRUG=Ҫ���ĵ�����ҩ��+��ǰAP���ޣ�ƿ��=
set SHELLCMD=%SHELLCMD% MAX_RED_AP_DRUG=%MAX_RED_AP_DRUG%

@echo +   �����Ը�����꣬��Ҫ���ĵ����ħ��ʯ��+��ǰAP���ޣ�������  +

set /p MAX_MAGICAL_STONE_AP_DRUG=Ҫ���ĵ����ħ��ʯ��+��ǰAP���ޣ�����=
set SHELLCMD=%SHELLCMD% MAX_MAGICAL_STONE_AP_DRUG=%MAX_MAGICAL_STONE_AP_DRUG%

@echo +           ������Щҩ��������Щ�꣬�ű�Ҳ��ֹͣ����           +

pause

@echo ----------------------------------------------------------------
@echo +            ����ű�����ʶ��ؼ���������ͼ����ȡɫ            +
@echo +                 ���λ�õ�XY����ֵҲ��д����                 +
@echo +                ��ǰ��Ļ�ֱ��ʱ����޸�Ϊ�̶�ֵ                +
@echo +                      ���ڼ��˻�����߼�                      +
@echo +               ��������Ҳ����˵�᲻������ӡ���               +
@echo +               ���Լ�����APҩѡ������ϱ��ӹ���               +
@echo +    �ű�����Ϊҩ��ȫ�����꣬���˳��ˣ��׹��˺ü���Сʱ����    +
@echo +           ����ط����Ѿ����ˣ���Ը�����ٵ������           +
@echo ----------------------------------------------------------------
@echo +      ����ý�MuMuģ��������Ļ�ֱ�����Ϊ1920x1080 480DPI      +
@echo +                  ������MuMuģ������rootȨ��                  +
@echo +                Ȼ�������Ϸ�Ŀ�����սѡ�����                +
@echo ----------------------------------------------------------------
@echo +                   rootȨ�����ڹ���tmpfs��                    +
@echo +          ������ͼ�ļ��Ͳ���д�������Ӳ�̣�����ĥ��          +

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
@echo +                  �ű��������´����п�ʼ����                  +
@echo +       ���´����а�CTRL+C����ֹͣ���У����ݲ���رմ���       +
@echo +                     �ٰ��س����ɹرմ���                     +
@echo +         �´�������ʾ����Ϣ���������ڣ��������ų�����         +

pause
start adb-stdin-raw shell %SHELLCMD%

@echo ----------------------------------------------------------------
@echo +                     �ű����ڱ�����������                     +

:END
@echo +                      ��������رձ�����                      +

pause
exit /b