#!/system/bin/sh

#Author: segfault
#https://space.bilibili.com/15209122
#bitcoin:bc1qfmale9twus34w9cntulmm9d23xy89gh6d7dx3e

export PATH="/data/local/tmp/rena_killer_bin:${PATH}"

AFF_TOP=1
AFF_CENTER=2
AFF_BOTTOM=3

#Support character selection - difficulty and AP cost
POINT_DIFFICULTY_BG_BROWN=344,572,${AFF_TOP}
RGB_DEC_DIFFICULTY_BG_BROWN=178,135,80

POINT_AP_COST_BG_BROWN=344,626,${AFF_TOP}
RGB_DEC_AP_COST_BG_BROWN=178,135,80

POINT_DIFFICULTY_AP_COST_SEAM_WHITE=344,599,${AFF_TOP}
RGB_DEC_DIFFICULTY_AP_COST_SEAM_WHITE=245,245,245


#Mutually following player on 3rd slot
POINT_RIGHT_EDGE_PURPLE=1864,811,${AFF_TOP}
RGB_DEC_RIGHT_EDGE_PURPLE=115,99,160

POINT_FOLLOWING_PINK=1564,793,${AFF_TOP}
RGB_DEC_FOLLOWING_PINK=252,89,134

POINT_FOLLOWING_WHITE=1577,806,${AFF_TOP}
RGB_DEC_FOLLOWING_WHITE=255,255,255

POINT_FOLLOWER_BLUE=1647,793,${AFF_TOP}
RGB_DEC_FOLLOWER_BLUE=40,154,233

POINT_FOLLOWER_WHITE=1663,803,${AFF_TOP}
RGB_DEC_FOLLOWER_WHITE=255,255,255

#NPC on 1st slot
POINT_RIGHT_EDGE_PINK=1863,326,${AFF_TOP}
RGB_DEC_RIGHT_EDGE_PINK=242,100,130


POINT_START_BUTTON_RIGHT_EDGE_YELLOW=1869,977,${AFF_BOTTOM}
RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW=236,179,65

POINT_START_BUTTON_RIGHT_EDGE_PINK=1842,983,${AFF_BOTTOM}
RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK=255,75,135

POINT_START_BUTTON_CENTER_WHITE=1772,976,${AFF_BOTTOM}
RGB_DEC_START_BUTTON_CENTER_WHITE=255,255,255


POINT_AUTO_BATTLE_BUTTON_PINK=1617,34,${AFF_TOP}
RGB_DEC_AUTO_BATTLE_BUTTON_PINK=254,144,174


POINT_BATTLE_CLEAR_LEFT_BROWN=742,385,${AFF_CENTER}
RGB_DEC_BATTLE_CLEAR_LEFT_BROWN=178,135,80

POINT_BATTLE_CLEAR_CENTER_WHITE=960,440,${AFF_CENTER}
RGB_DEC_BATTLE_CLEAR_CENTER_WHITE=253,253,253

POINT_BATTLE_CLEAR_CENTER_BROWN=960,417,${AFF_CENTER}
RGB_DEC_BATTLE_CLEAR_CENTER_BROWN=178,135,80

POINT_BATTLE_CLEAR_LETTER_T_PINK=791,1045,${AFF_BOTTOM}
RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK=185,121,115
#244,157,145
#125,84,84

POINT_BATTLE_CLEAR_LETTER_N_PINK=1136,1042,${AFF_BOTTOM}
RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK=190,120,113
#252,157,144
#127,83,82


POINT_LEVEL_UP_LEFT_PINK=164,352,${AFF_CENTER}
RGB_DEC_LEVEL_UP_LEFT_PINK=224,80,107

POINT_LEVEL_UP_TOP_PINK=460,52,${AFF_CENTER}
RGB_DEC_LEVEL_UP_TOP_PINK=255,187,192

POINT_LEVEL_UP_BOTTOM_PINK=463,1019,${AFF_CENTER}
RGB_DEC_LEVEL_UP_BOTTOM_PINK=255,239,232


POINT_PLAYER_LV_UP_CAPTION_BROWN=960,400,${AFF_CENTER}
RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN=178,135,80

POINT_PLAYER_LV_UP_LETTER_B_PURPLE=861,720,${AFF_CENTER}
RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE=91,48,114

POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE=965,883,${AFF_CENTER}
RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE=255,255,255


POINT_STORY_PLACE_TEXT_PURPLE=239,167,${AFF_TOP}
RGB_DEC_STORY_PLACE_TEXT_PURPLE=121,74,184

POINT_STORY_IROHA_TEXT_GREY=565,928,${AFF_BOTTOM}
RGB_DEC_STORY_IROHA_TEXT_GREY=90,90,90

POINT_BATTLE_MENU_ENTRY_PURPLE=1125,572,${AFF_TOP}
RGB_DEC_BATTLE_MENU_ENTRY_PURPLE=131,91,206

POINT_BATTLE_MENU_ENTRY_TEXT_WHITE=1310,574,${AFF_TOP}
RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE=255,255,255

POINT_AP_REFILL_BUTTON_WHITE=1157,56,${AFF_TOP}
RGB_DEC_AP_REFILL_BUTTON_WHITE=255,255,255


POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN=1867,52,${AFF_CENTER}
RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN=195,163,104

POINT_AP_REFILL_CAPTION_LETTER_P_WHITE=925,129,${AFF_CENTER}
RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE=255,255,255

POINT_AP_REFILL_CAPTION_BG_BROWN=947,129,${AFF_CENTER}
RGB_DEC_AP_REFILL_CAPTION_BG_BROWN=164,123,72

POINT_GREEN_AP_DRUG_BUTTON_TEXT=413,908,${AFF_CENTER}
POINT_RED_AP_DRUG_BUTTON_TEXT=935,908,${AFF_CENTER}
RGB_DEC_AP_DRUG_BUTTON_WHITE=255,255,255
RGB_DEC_AP_DRUG_BUTTON_GREY=191,191,191
RGB_DEC_AP_DRUG_BUTTON_GREY_HALF=100,100,100


POINT_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN=1555,232,${AFF_CENTER}
RGB_DEC_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN=195,163,104

POINT_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE=884,309,${AFF_CENTER}
RGB_DEC_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE=255,255,255

POINT_AP_REFILL_CONFIRM_CAPTION_BG_BROWN=919,309,${AFF_CENTER}
RGB_DEC_AP_REFILL_CONFIRM_CAPTION_BG_BROWN=164,123,72

POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE=1131,733,${AFF_CENTER}
RGB_DEC_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE=255,255,255


POINT_BATTLE_CLEAR_EXP_BAR_BROWN=821,479,${AFF_CENTER}
RGB_DEC_BATTLE_CLEAR_EXP_BAR_BROWN=178,135,80


POINT_RESTART_BUTTON_TEXT_WHITE=1749,1000,${AFF_BOTTOM}
RGB_DEC_RESTART_BUTTON_TEXT_WHITE=255,255,255

POINT_RESTART_BUTTON_LEFT_YELLOW=1631,996,${AFF_BOTTOM}
RGB_DEC_RESTART_BUTTON_LEFT_YELLOW=252,230,139

POINT_RESTART_BUTTON_RIGHT_YELLOW=1853,996,${AFF_BOTTOM}
RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW=253,239,163


exit_process()
{
  echo "Stopped."
  echo "Press ENTER to exit."
  read press_enter_key
  echo "Press ENTER again to exit."
  read press_enter_key
  do_exit_process $1
}

do_exit_process()
{
  echo "Exit now."
  rmdir /data/local/tmp/tmpfs/magireco/lock
  exit $1
}

trap exit_process SIGINT
trap do_exit_process SIGTERM
trap do_exit_process SIGQUIT
trap do_exit_process SIGHUP

#rotate_log()
#{
#  if [ -f /data/local/tmp/tmpfs/magireco/log1.txt ];
#  then
#    LOG_SIZE=$(stat -c %s /data/local/tmp/tmpfs/magireco/log1.txt)
#    ((LOG_SIZE > 65536)) && mv /data/local/tmp/tmpfs/magireco/log1.txt /data/local/tmp/tmpfs/magireco/log0.txt
#  fi
#}

LOCK_CHECKED=0
capture_screen()
{
  if grep -q "^tmpfs /data/local/tmp/tmpfs tmpfs" /proc/mounts;
  then
    echo "capture_screen: tmpfs mounted."
  else
    echo "capture_screen: tmpfs not mounted, attempt to mount..."
    mkdir -p /data/local/tmp/tmpfs
    mount -t tmpfs tmpfs /data/local/tmp/tmpfs || exit_process 1
  fi
  mkdir -p /data/local/tmp/tmpfs/magireco
  if [ ! -d /data/local/tmp/tmpfs/magireco ];
  then
    echo "Directory /data/local/tmp/tmpfs/magireco does not exist."
    exit_process 1
  fi
  if ! mkdir /data/local/tmp/tmpfs/magireco/lock 2> /dev/null;
  then
    if ((LOCK_CHECKED == 0));then
      echo "Another process seems to be already running. Exit."
      exit_process 1
    fi
  else
    LOCK_CHECKED=1
  fi
  cd /data/local/tmp/tmpfs/magireco
  rm -f screen.dump
  screencap screen.dump
  if [ ! -f screen.dump ];
  then
    echo "capture_screen: screen.dump file does not exist."
    exit_process 1
  fi
}

get_pixel_color()
{
  POS_X=$1
  POS_Y=$2
  if (( POS_X >= SCR_RES_WIDTH ));
  then
    echo "POS_X out of range."
    exit_process 1
  fi
  if (( POS_Y >= SCR_RES_HEIGHT ));
  then
    echo "POS_Y out of range."
    exit_process 1
  fi
  OFFSET=$(( 16 + ( POS_Y * SCR_RES_WIDTH + POS_X ) * 4 ))
  if [ ! -f /data/local/tmp/tmpfs/magireco/screen.dump ]; then
    echo "File screen.dump does not exist."
    exit_process 1
  fi
  RGB_HEX=$(dd if=screen.dump bs=1 count=3 skip=$OFFSET 2> /dev/null | xxd -p | tr abcdef ABCDEF)
  PX_R=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:0:2}; } | bc )
  PX_G=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:2:2}; } | bc )
  PX_B=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:4:2}; } | bc )
  echo "X=${POS_X} Y=${POS_Y} RGB_HEX=${RGB_HEX} R,G,B=${PX_R},${PX_G},${PX_B}"
}

ACTUAL_X=0
ACTUAL_Y=0
GCD=0

REF_RES_WIDTH=1920
REF_RES_HEIGHT=1080
REF_RATIO_X=16
REF_RATIO_Y=9

SCR_RES_WIDTH=0
SCR_RES_HEIGHT=0
SCR_RES_HEX=0
SCR_RATIO_X=0
SCR_RATIO_Y=0
SCR_REF_WIDTH=0
SCR_REF_HEIGHT=0
SCR_BBW=0
SCR_HGAP=0
CONVERSION_MODE="SIMPLE_SCALING"

get_screen_resolution()
{
  SCR_RES_HEX=$(screencap | dd bs=4 count=2 2> /dev/null | xxd -p | tr abcdef ABCDEF)
  SCR_RES_WIDTH=$( { echo "obase=10; ibase=16";echo ${SCR_RES_HEX:0:2}; } | bc )
  SCR_RES_WIDTH_=$( { echo "obase=10; ibase=16";echo ${SCR_RES_HEX:2:2}; } | bc )
  SCR_RES_WIDTH=$((SCR_RES_WIDTH + 256 * SCR_RES_WIDTH_))
  unset SCR_RES_WIDTH_
  SCR_RES_HEIGHT=$( { echo "obase=10; ibase=16";echo ${SCR_RES_HEX:8:2}; } | bc )
  SCR_RES_HEIGHT_=$( { echo "obase=10; ibase=16";echo ${SCR_RES_HEX:10:2}; } | bc )
  SCR_RES_HEIGHT=$((SCR_RES_HEIGHT + 256 * SCR_RES_HEIGHT_))
  unset SCR_RES_HEIGHT_
  echo "SCR_RES_WIDTH=${SCR_RES_WIDTH} SCR_RES_HEIGHT=${SCR_RES_HEIGHT} SCR_RES_HEX=${SCR_RES_HEX}"
}

get_gcd() {
  A=$1
  B=$2
  if ((A % B == 0));then GCD=${B}; return 0;fi
  get_gcd ${B} $((A % B))
}

get_conversion_mode()
{
  get_screen_resolution

  get_gcd ${SCR_RES_WIDTH} ${SCR_RES_HEIGHT}

  SCR_RATIO_X=$((SCR_RES_WIDTH / GCD))
  SCR_RATIO_Y=$((SCR_RES_HEIGHT / GCD))
  echo "SCR_RATIO_X=${SCR_RATIO_X} SCR_RATIO_Y=${SCR_RATIO_Y}"

  if ((SCR_RATIO_X == REF_RATIO_X && SCR_RATIO_Y == REF_RATIO_Y)); then
    CONVERSION_MODE="SIMPLE_SCALING"
    #reference width, equals to actual
    SCR_REF_WIDTH=$((SCR_RES_WIDTH))
    #reference height, equals to actual
    SCR_REF_HEIGHT=$((SCR_RES_HEIGHT))
  else
    if ((SCR_RATIO_X * REF_RATIO_Y > REF_RATIO_X * SCR_RATIO_Y)); then
      CONVERSION_MODE="VERTICAL_BLACK_BARS"
      #reference width, smaller than actual
      SCR_REF_WIDTH=$((SCR_RES_HEIGHT * REF_RES_WIDTH / REF_RES_HEIGHT))
      #reference height
      SCR_REF_HEIGHT=$((SCR_RES_HEIGHT))
      #black bar width, assuming ref screen is at the center
      SCR_BBW=$(( (SCR_RES_WIDTH - SCR_REF_WIDTH) / 2))
    elif ((SCR_RATIO_X * REF_RATIO_Y < REF_RATIO_X * SCR_RATIO_Y)); then
      CONVERSION_MODE="ENLARGED_VERTICAL_SPACE"
      #reference width
      SCR_REF_WIDTH=$((SCR_RES_WIDTH))
      #reference height, smaller than actual
      SCR_REF_HEIGHT=$((SCR_RES_WIDTH * REF_RES_HEIGHT / REF_RES_WIDTH))
      #height gap, assuming ref screen is at the center
      SCR_HGAP=$(( (SCR_RES_HEIGHT - SCR_REF_HEIGHT) / 2))
    else
      echo "Unexpected error."
      exit_process 1
    fi
  fi
}

convert_coords()
{
  REF_X=$1
  REF_Y=$2
  AFFINITY=$3

  echo "convert_coords: REF_X=${REF_X} REF_Y=${REF_Y} AFFINITY=${AFFINITY}"

  if ((SCR_RES_WIDTH == 0)) && ((SCR_RES_HEIGHT == 0));then
    get_conversion_mode
  fi

  ACTUAL_X=$((REF_X * SCR_REF_WIDTH / REF_RES_WIDTH))
  ACTUAL_Y=$((REF_Y * SCR_REF_HEIGHT / REF_RES_HEIGHT))
  echo "ACTUAL_X=${ACTUAL_X} ACTUAL_Y=${ACTUAL_Y}"
  if [[ "${CONVERSION_MODE}" == "SIMPLE_SCALING" ]]; then
    echo "CONVERSION_MODE=${CONVERSION_MODE}"
  elif [[ "${CONVERSION_MODE}" == "VERTICAL_BLACK_BARS" ]]; then
    ACTUAL_X=$((ACTUAL_X + SCR_BBW))
    echo "CONVERSION_MODE=${CONVERSION_MODE} SCR_BBW=${SCR_BBW}"
  elif [[ "${CONVERSION_MODE}" == "ENLARGED_VERTICAL_SPACE" ]]; then
    if ((AFFINITY == AFF_TOP)); then
      echo "CONVERSION_MODE=${CONVERSION_MODE} AFFINITY=${AFFINITY}(AFF_TOP)"
    elif ((AFFINITY == AFF_CENTER)); then
      ACTUAL_Y=$((ACTUAL_Y + SCR_HGAP))
      echo "CONVERSION_MODE=${CONVERSION_MODE} AFFINITY=${AFFINITY}(AFF_CENTER) SCR_HGAP=${SCR_HGAP}"
    elif ((AFFINITY == AFF_BOTTOM)); then
      ACTUAL_Y=$((ACTUAL_Y + SCR_RES_HEIGHT - SCR_REF_HEIGHT))
      echo "CONVERSION_MODE=${CONVERSION_MODE} AFFINITY=${AFFINITY}(AFF_BOTTOM) SCR_RES_HEIGHT-SCR_REF_HEIGHT=$((SCR_RES_HEIGHT - SCR_REF_HEIGHT))"
    else
      echo "Unknown AFFINITY=${AFFINITY}"
      exit_process 1
    fi
  fi
  echo "ACTUAL_X=${ACTUAL_X} ACTUAL_Y=${ACTUAL_Y}"
}

tap_screen_shifted()
{
  if [[ "$3" == "" ]];then
    TAP_X=$(echo $1 | tr ',' ' ' | awk '{print $1}')
    TAP_Y=$(echo $1 | tr ',' ' ' | awk '{print $2}')
    TAP_AFFINITY=$(echo $1 | tr ',' ' ' | awk '{print $3}')
  else
    TAP_X=$1
    TAP_Y=$2
    TAP_AFFINITY=$3
  fi
  convert_coords ${TAP_X} ${TAP_Y} ${TAP_AFFINITY}
  TAP_X=${ACTUAL_X}
  TAP_Y=${ACTUAL_Y}
  TAP_X_RAND=$(( TAP_X - 8 + (RANDOM % 16) ))
  TAP_Y_RAND=$(( TAP_Y - 8 + (RANDOM % 16) ))
  #sleep $((RANDOM/10000)).$(printf "%0.4d" $((RANDOM%10000)) )
  #sleep 0.$(printf "%0.4d" $((RANDOM%10000)) )
  echo "TAP_X=${TAP_X} TAP_Y=${TAP_Y}"
  input tap $TAP_X_RAND $TAP_Y_RAND
  echo "input tap ${TAP_X_RAND} ${TAP_Y_RAND}"
}

#rgb_dec_to_hex()
#{
#  RGB_DEC_EXPECTED=$(echo $1 | tr ',' ' ')
#  PX_R_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $1}')
#  PX_G_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $2}')
#  PX_B_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $3}')
#  RGB_HEX_EXPECTED=""
#  if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
#  RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_R_EXPECTED}; } | bc )
#  if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
#  RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_G_EXPECTED}; } | bc )
#  if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
#  RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_B_EXPECTED}; } | bc )
#  echo "RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}"
#}

test_point()
{
  POS_X_Y=$(echo $1 | tr ',' ' ')
  convert_coords ${POS_X_Y}
  POS_X_Y="${ACTUAL_X} ${ACTUAL_Y}"
  POS_Y_OFFSET=$2
  PX_R_G_B_EXPECTED=$(echo $3 | tr ',' ' ')
  RANGE=$4
  do_test_point ${POS_X_Y} ${POS_Y_OFFSET} ${PX_R_G_B_EXPECTED} ${RANGE} || return 1
}

do_test_point()
{
  POS_X=$1
  POS_Y=$2
  POS_Y_OFFSET=$3
  POS_Y=$((POS_Y + POS_Y_OFFSET))
  PX_R_EXPECTED=$4
  PX_G_EXPECTED=$5
  PX_B_EXPECTED=$6
  RANGE=$7

  if [[ "${RANGE}" == "" ]];
  then
    RANGE=0
  fi

  get_pixel_color ${POS_X} ${POS_Y}

  echo "R,G,B=${PX_R},${PX_G},${PX_B} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}"

  if (( RANGE == 0 ));
  then
    if (( PX_R == PX_R_EXPECTED )) && (( PX_G == PX_G_EXPECTED )) && (( PX_B == PX_B_EXPECTED ));
    then
      echo "test_point matched."
      return 0
    else
      echo "test_point not matched."
      return 1
    fi
  elif (( RANGE > 0 ));
  then
    if (( PX_R_EXPECTED - PX_R <= RANGE )) && (( PX_R - PX_R_EXPECTED <= RANGE )) && \
       (( PX_G_EXPECTED - PX_G <= RANGE )) && (( PX_G - PX_G_EXPECTED <= RANGE )) && \
       (( PX_B_EXPECTED - PX_B <= RANGE )) && (( PX_B - PX_B_EXPECTED <= RANGE ));
    then
      echo "test_point is within the RANGE=${RANGE}."
      return 0
    else
      echo "test_point is outside the RANGE=${RANGE}."
      return 1
    fi
  else
    echo "test_point RANGE should be greater than zero."
    return 1
  fi
#  rgb_dec_to_hex $3
#  if [[ "${RGB_HEX}" == "${RGB_HEX_EXPECTED}" ]];then
#    echo "test_point matched."
#    return 0
#  else
#    echo "test_point not matched."
#    return 1
#  fi
}

get_battery_temperature()
{
  BATT_TEMP=$(dumpsys battery | grep -i "temperature" | awk '{print $2}')
  echo "BATT_TEMP=${BATT_TEMP}"
}

prevent_overheat()
{
  OVERHEAT=0
  while true; do
    get_battery_temperature
    (( OVERHEAT )) || OVERHEAT=$(( BATT_TEMP >= 400 ))
    (( OVERHEAT )) || break
    (( BATT_TEMP < 376 )) && break
    echo "Pause process for 15 sec."
    input keyevent HOME
    sleep 15
    echo "Continue process."
    am start com.bilibili.madoka.bilibili/jp.f4samurai.AppActivity
    sleep 1
    STUCK_SINCE_UNIX=$(date +%s)
  done
}



STATUS="SUPPORT_CHARA_SEL"
LAST_STATUS=""
STUCK_COUNT=0
CYCLE=0
START_SINCE_UNIX=$(date +%s)
STUCK_SINCE_UNIX=${START_SINCE_UNIX}

if [[ "${AP_NO_WASTE}" == "true" ]] || [[ "${AP_NO_WASTE}" == "1" ]];
then
  AP_NO_WASTE=1
else
  AP_NO_WASTE=0
fi
READY_TO_TAKE_RED_AP_DRUG=0

TAKING_GREEN_AP_DRUG=0
TAKING_RED_AP_DRUG=0
GREEN_AP_DRUG_CONSUMED=0
RED_AP_DRUG_CONSUMED=0
if [[ "$1" != "" ]];then AP_TARGET=$1; fi

LOG_ROTATE_COUNTER=0
while true; do
  STATS_STRING="\nCYCLE=${CYCLE} CONSUMED_AP=$((CYCLE*3))\nSTATUS=${STATUS}\n"
  STATS_STRING="${STATS_STRING}Consumed AP drugs:\n  Green: ${GREEN_AP_DRUG_CONSUMED}\n  Red:   ${RED_AP_DRUG_CONSUMED}\n"
  if (( AP_TARGET > 0 ));
  then
    STATS_STRING="${STATS_STRING}AP_TARGET=${AP_TARGET} REMAINING_AP=$((AP_TARGET-CYCLE*3))\n"
  fi

  CURRENT_UNIX=$(date +%s)
  ELAPSED_SEC_TOTAL=$((CURRENT_UNIX - START_SINCE_UNIX))
  ELAPSED_HR=$((ELAPSED_SEC_TOTAL / 3600))
  ELAPSED_MIN=$(((ELAPSED_SEC_TOTAL % 3600) / 60))
  ELAPSED_SEC=$((ELAPSED_SEC_TOTAL % 60))
  STATS_STRING="${STATS_STRING}Elapsed time: ${ELAPSED_HR}:${ELAPSED_MIN}:${ELAPSED_SEC}\n"

  #echo -ne "${STATS_STRING}" #echo to log
  echo -ne "${STATS_STRING}" >&2 #echo to console

  if [[ "${STATUS}" == "${LAST_STATUS}" ]];
  then
    ((STUCK_COUNT++))
    if (( CURRENT_UNIX - STUCK_SINCE_UNIX > 900 ));
    then
      input keyevent HOME
      break
    fi
  else
    STUCK_COUNT=0
    STUCK_SINCE_UNIX=$(date +%s)
  fi
  LAST_STATUS="${STATUS}"

  capture_screen
  if [[ "${STATUS}" == "SUPPORT_CHARA_SEL" ]];
  then
    if test_point ${POINT_DIFFICULTY_BG_BROWN} 0 ${RGB_DEC_DIFFICULTY_BG_BROWN} 12 && \
       test_point ${POINT_AP_COST_BG_BROWN} 0 ${RGB_DEC_AP_COST_BG_BROWN} 12 && \
       test_point ${POINT_DIFFICULTY_AP_COST_SEAM_WHITE} 0 ${RGB_DEC_DIFFICULTY_AP_COST_SEAM_WHITE} 12 ;
    then
      if test_point ${POINT_RIGHT_EDGE_PURPLE} 0 ${RGB_DEC_RIGHT_EDGE_PURPLE} 12 && \
         test_point ${POINT_FOLLOWING_PINK} 0 ${RGB_DEC_FOLLOWING_PINK} 12 && \
         test_point ${POINT_FOLLOWING_WHITE} 0 ${RGB_DEC_FOLLOWING_WHITE} 12 && \
         test_point ${POINT_FOLLOWER_BLUE} 0 ${RGB_DEC_FOLLOWER_BLUE} 12 && \
         test_point ${POINT_FOLLOWER_WHITE} 0 ${RGB_DEC_FOLLOWER_WHITE} 12 ;
      then
        #Mutually following player on 3rd slot
        tap_screen_shifted 1600 900 ${AFF_TOP}
        STATUS="WAIT_FOR_CONFIRM_START"
      elif test_point ${POINT_RIGHT_EDGE_PURPLE} -244 ${RGB_DEC_RIGHT_EDGE_PURPLE} 12 && \
           test_point ${POINT_FOLLOWING_PINK} -244 ${RGB_DEC_FOLLOWING_PINK} 12 && \
           test_point ${POINT_FOLLOWING_WHITE} -244 ${RGB_DEC_FOLLOWING_WHITE} 12 && \
           test_point ${POINT_FOLLOWER_BLUE} -244 ${RGB_DEC_FOLLOWER_BLUE} 12 && \
           test_point ${POINT_FOLLOWER_WHITE} -244 ${RGB_DEC_FOLLOWER_WHITE} 12 ;
      then
        #Mutually following player on 2nd slot
        tap_screen_shifted 1600 $((900-244)) ${AFF_TOP}
        STATUS="WAIT_FOR_CONFIRM_START"
      elif test_point ${POINT_RIGHT_EDGE_PINK} 244 ${RGB_DEC_RIGHT_EDGE_PINK} 12 ;
      then
        #NPC on 2nd slot
        tap_screen_shifted 1600 $((900-244)) ${AFF_TOP}
        STATUS="WAIT_FOR_CONFIRM_START"
      elif test_point ${POINT_RIGHT_EDGE_PINK} 0 ${RGB_DEC_RIGHT_EDGE_PINK} 12 ;
      then
        #NPC on 1st slot
        tap_screen_shifted 1600 $((900-244-244)) ${AFF_TOP}
        STATUS="WAIT_FOR_CONFIRM_START"
      elif test_point ${POINT_RIGHT_EDGE_PURPLE} -488 ${RGB_DEC_RIGHT_EDGE_PURPLE} 12 && \
           test_point ${POINT_FOLLOWING_PINK} -488 ${RGB_DEC_FOLLOWING_PINK} 12 && \
           test_point ${POINT_FOLLOWING_WHITE} -488 ${RGB_DEC_FOLLOWING_WHITE} 12 && \
           test_point ${POINT_FOLLOWER_BLUE} -488 ${RGB_DEC_FOLLOWER_BLUE} 12 && \
           test_point ${POINT_FOLLOWER_WHITE} -488 ${RGB_DEC_FOLLOWER_WHITE} 12 ;
      then
        #Mutually following player on 1st slot
        tap_screen_shifted 1600 $((900-244-244)) ${AFF_TOP}
        STATUS="WAIT_FOR_CONFIRM_START"
      fi
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_CONFIRM_START" ]];
  then
    if ((CYCLE % 3 == 1));
    then
      prevent_overheat
    fi
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 12 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 12 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 12 ;
    then
      CONFIRM_BUTTON_SHOWED=0
      STATUS="CLICKING_CONFIRM_BUTTON"
    fi
  elif [[ "${STATUS}" == "CLICKING_CONFIRM_BUTTON" ]];
  then
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 12 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 12 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 12 ;
    then
      ((CONFIRM_BUTTON_SHOWED++))
      if ((CONFIRM_BUTTON_SHOWED==1)) || ((CONFIRM_BUTTON_SHOWED>=5));
      then
        tap_screen_shifted ${POINT_START_BUTTON_CENTER_WHITE}
        if ((CONFIRM_BUTTON_SHOWED>=5));then
          CONFIRM_BUTTON_SHOWED=0
        fi
      else
        sleep 0.3
      fi
    else
      STATUS="WAIT_FOR_BATTLE_CLEAR"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_BATTLE_CLEAR" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 30 ;
    then
      echo "PLAYER LEVEL UP"
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 12 ;
    then
      echo "LEVEL UP"
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} 12 && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} 12 && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} 12 && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90 ;
    then
      STATUS="BATTLE_CLEAR"
    fi
  elif [[ "${STATUS}" == "LEVEL_UP" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 12 ;
    then
      tap_screen_shifted 33 $((REF_RES_HEIGHT-34)) ${AFF_BOTTOM}
    elif test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} 12 && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} 12 && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} 12 ;
    then
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} 12 && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 12 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 12 ;
      then
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      elif test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
           test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90 ;
      then
        STATUS="BATTLE_CLEAR"
      fi
    fi
  elif [[ "${STATUS}" == "PLAYER_LEVEL_UP" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 30 ;
    then
      tap_screen_shifted ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE}
    elif test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} 12 && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} 12 && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} 12 ;
    then
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} 12 && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 12 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 12 ;
      then
        #Shouldn't go there.
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      elif test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
           test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90 ;
      then
        #Normal situation, go back to battle clear screen.
        STATUS="BATTLE_CLEAR"
      fi
    fi
  elif [[ "${STATUS}" == "BATTLE_CLEAR" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 30 ;
    then
      echo "PLAYER LEVEL UP"
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 12 ;
    then
      echo "LEVEL UP"
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} 12 && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} 12 && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} 12 ;
    then
      if (( AP_TARGET > 0 ));then
        if (( CYCLE * 3 >= AP_TARGET ));then
          input keyevent HOME
          break
        fi
      fi
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} 12 && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 12 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 12 ;
      then
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      else
        if test_point ${POINT_BATTLE_CLEAR_EXP_BAR_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_EXP_BAR_BROWN} 16 ;
        then
          ((BATTLE_CLEAR_EXP_BAR_SHOWED++))
          if ((BATTLE_CLEAR_EXP_BAR_SHOWED%20==1));
          then
            tap_screen_shifted 33 $((REF_RES_HEIGHT-34)) ${AFF_BOTTOM}
          else
            sleep 0.1
          fi
        else
          RESTART_BUTTON_MISSING=0
          BATTLE_CLEAR_EXP_BAR_SHOWED=0
          STATUS="WAIT_FOR_RESTART_BUTTON"
        fi
      fi
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_RESTART_BUTTON" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 30 ;
    then
      echo "PLAYER LEVEL UP"
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 12 ;
    then
      echo "LEVEL UP"
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} 12 && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 12 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 12 ;
    then
      STATUS="CLICK_RESTART"
      RESTART_BUTTON_SHOWED=0
    else
      ((RESTART_BUTTON_MISSING++))
      if ((RESTART_BUTTON_MISSING >= 3));
      then
        STATUS="AP_EXHAUSTION"
        tap_screen_shifted 33 $((REF_RES_HEIGHT-34)) ${AFF_BOTTOM}
      fi
      sleep 0.3
    fi
  elif [[ "${STATUS}" == "AP_EXHAUSTION" ]];
  then
    #Should be the battle selection menu of chap.2 sec.1
    if test_point ${POINT_STORY_PLACE_TEXT_PURPLE} 0 ${RGB_DEC_STORY_PLACE_TEXT_PURPLE} 16 && \
       test_point ${POINT_STORY_IROHA_TEXT_GREY} 0 ${RGB_DEC_STORY_IROHA_TEXT_GREY} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_PURPLE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_PURPLE} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_BUTTON_WHITE} 0 ${RGB_DEC_AP_REFILL_BUTTON_WHITE} 12 ;
    then
      tap_screen_shifted ${POINT_AP_REFILL_BUTTON_WHITE}
      STATUS="AP_REFILL"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_AP_AUTO_REFILL" ]];
  then
    if test_point ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CAPTION_LETTER_P_WHITE} 0 ${RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CAPTION_BG_BROWN} 16 ;
    then
      #Still not auto-refilled to at least 3 AP
      STATUS="CLOSE_WINDOW_WITHOUT_REFILLING_AP"
    elif test_point ${POINT_DIFFICULTY_BG_BROWN} 0 ${RGB_DEC_DIFFICULTY_BG_BROWN} 12 && \
         test_point ${POINT_AP_COST_BG_BROWN} 0 ${RGB_DEC_AP_COST_BG_BROWN} 12 && \
         test_point ${POINT_DIFFICULTY_AP_COST_SEAM_WHITE} 0 ${RGB_DEC_DIFFICULTY_AP_COST_SEAM_WHITE} 12 && \
         test_point ${POINT_RIGHT_EDGE_PINK} 0 ${RGB_DEC_RIGHT_EDGE_PINK} 12 ;
    then
      #NPC on 1st slot. Should be the battle selection menu of chap.2 sec.1
      #Auto-refilled to at least 3 AP just now, consume it immediately right after refilling AP
      tap_screen_shifted ${POINT_AP_REFILL_BUTTON_WHITE}
      STATUS="AP_REFILL"
      READY_TO_TAKE_RED_AP_DRUG=1
    fi
  elif [[ "${STATUS}" == "AP_REFILL" ]];
  then
    if test_point ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CAPTION_LETTER_P_WHITE} 0 ${RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CAPTION_BG_BROWN} 16 ;
    then
      if ! test_point ${POINT_GREEN_AP_DRUG_BUTTON_TEXT} 0 ${RGB_DEC_AP_DRUG_BUTTON_GREY_HALF} 100 ;
      then
        tap_screen_shifted ${POINT_GREEN_AP_DRUG_BUTTON_TEXT}
        STATUS="AP_REFILL_CONFIRM"
        TAKING_GREEN_AP_DRUG=1
      elif ! test_point ${POINT_RED_AP_DRUG_BUTTON_TEXT} 0 ${RGB_DEC_AP_DRUG_BUTTON_GREY_HALF} 100 ;
      then
        if ((READY_TO_TAKE_RED_AP_DRUG || ! AP_NO_WASTE));
        then
          tap_screen_shifted ${POINT_RED_AP_DRUG_BUTTON_TEXT}
          STATUS="AP_REFILL_CONFIRM"
          TAKING_RED_AP_DRUG=1
          READY_TO_TAKE_RED_AP_DRUG=0
        else
          STATUS="CLOSE_WINDOW_WITHOUT_REFILLING_AP"
        fi
      else
        echo "AP drug exhausted."
        input keyevent HOME
        break
      fi
    fi
  elif [[ "${STATUS}" == "AP_REFILL_CONFIRM" ]];
  then
    if test_point ${POINT_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_CONFIRM_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CAPTION_BG_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE} 12 ;
    then
      tap_screen_shifted ${POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE}
      STATUS="AP_REFILLED"
      if ((TAKING_GREEN_AP_DRUG != 0));
      then
        ((GREEN_AP_DRUG_CONSUMED++))
        TAKING_GREEN_AP_DRUG=0
      elif ((TAKING_RED_AP_DRUG != 0));
      then
        ((RED_AP_DRUG_CONSUMED++))
        TAKING_RED_AP_DRUG=0
      fi
    fi
  elif [[ "${STATUS}" == "AP_REFILLED" ]] || [[ "${STATUS}" == "CLOSE_WINDOW_WITHOUT_REFILLING_AP" ]];
  then
    #Back to AP refill window again.
    if test_point ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CAPTION_LETTER_P_WHITE} 0 ${RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CAPTION_BG_BROWN} 16 ;
    then
      tap_screen_shifted ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN}
      if [[ "${STATUS}" == "AP_REFILLED" ]];
      then
        STATUS="AP_REFILL_WINDOW_CLOSED"
      elif [[ "${STATUS}" == "CLOSE_WINDOW_WITHOUT_REFILLING_AP" ]];
      then
        sleep 1
        tap_screen_shifted ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE}
        STATUS="WAIT_FOR_AP_AUTO_REFILL"
      fi
    fi
  elif [[ "${STATUS}" == "AP_REFILL_WINDOW_CLOSED" ]];
  then
    #Again, should be the battle selection menu of chap.2 sec.1
    if test_point ${POINT_STORY_PLACE_TEXT_PURPLE} 0 ${RGB_DEC_STORY_PLACE_TEXT_PURPLE} 16 && \
       test_point ${POINT_STORY_IROHA_TEXT_GREY} 0 ${RGB_DEC_STORY_IROHA_TEXT_GREY} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_PURPLE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_PURPLE} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE} 12 && \
       test_point ${POINT_AP_REFILL_BUTTON_WHITE} 0 ${RGB_DEC_AP_REFILL_BUTTON_WHITE} 12 ;
    then
      #chap.2 sec.1 battle.4
      tap_screen_shifted ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE}
      STATUS="SUPPORT_CHARA_SEL"
    elif test_point ${POINT_DIFFICULTY_BG_BROWN} 0 ${RGB_DEC_DIFFICULTY_BG_BROWN} 12 && \
         test_point ${POINT_AP_COST_BG_BROWN} 0 ${RGB_DEC_AP_COST_BG_BROWN} 12 && \
         test_point ${POINT_DIFFICULTY_AP_COST_SEAM_WHITE} 0 ${RGB_DEC_DIFFICULTY_AP_COST_SEAM_WHITE} 12 && \
         test_point ${POINT_RIGHT_EDGE_PINK} 0 ${RGB_DEC_RIGHT_EDGE_PINK} 12 ;
    then
      #Already at character selection screen
      #NPC on 1st slot. Should be the battle selection menu of chap.2 sec.1
      #Should be the situation that: AP has been auto-refilled to at least 3 AP just now, consume it immediately right after refilling AP
      STATUS="SUPPORT_CHARA_SEL"
    fi
  elif [[ "${STATUS}" == "CLICK_RESTART" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 30 ;
    then
      echo "PLAYER LEVEL UP"
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 12 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 12 ;
    then
      echo "LEVEL UP"
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} 12 && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 12 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 12 ;
    then
      ((RESTART_BUTTON_SHOWED++))
      if ((RESTART_BUTTON_SHOWED==1)) || ((RESTART_BUTTON_SHOWED>=5));
      then
        tap_screen_shifted ${POINT_RESTART_BUTTON_TEXT_WHITE}
        if ((RESTART_BUTTON_SHOWED>=5));
        then
          RESTART_BUTTON_SHOWED=0
        fi
      else
        sleep 0.3
      fi
    else
      ((CYCLE++))
      STATUS="SUPPORT_CHARA_SEL"
    fi
  fi
done # | while read line; do
#  [ -f /data/local/tmp/tmpfs/magireco/log1.txt ] && echo "${line}" >> /data/local/tmp/tmpfs/magireco/log1.txt
#  echo "${line}" >&2
#  LOG_ROTATE_COUNTER=$((LOG_ROTATE_COUNTER % 50 + 1))
#  ((LOG_ROTATE_COUNTER == 1)) && rotate_log
#done
#
#do_exit_process
