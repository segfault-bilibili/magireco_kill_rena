#!/system/bin/sh

#Mutually following player on 3rd slot
POINT_RIGHT_EDGE_PURPLE=1864,811
RGB_DEC_RIGHT_EDGE_PURPLE=115,99,160

POINT_FOLLOWING_PINK=1564,793
RGB_DEC_FOLLOWING_PINK=252,89,134

POINT_FOLLOWING_WHITE=1577,806
RGB_DEC_FOLLOWING_WHITE=255,255,255

POINT_FOLLOWER_BLUE=1647,793
RGB_DEC_FOLLOWER_BLUE=40,154,233

POINT_FOLLOWER_WHITE=1663,803
RGB_DEC_FOLLOWER_WHITE=255,255,255

#NPC on 1st slot
POINT_RIGHT_EDGE_PINK=1863,326
RGB_DEC_RIGHT_EDGE_PINK=242,100,130


POINT_START_BUTTON_RIGHT_EDGE_YELLOW=1869,977
RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW=236,179,65

POINT_START_BUTTON_RIGHT_EDGE_PINK=1842,983
RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK=255,75,135

POINT_START_BUTTON_CENTER_WHITE=1772,976
RGB_DEC_START_BUTTON_CENTER_WHITE=255,255,255


POINT_AUTO_BATTLE_BUTTON_PINK=1617,34
RGB_DEC_AUTO_BATTLE_BUTTON_PINK=254,144,174


POINT_BATTLE_CLEAR_LEFT_BROWN=742,385
RGB_DEC_BATTLE_CLEAR_LEFT_BROWN=178,135,80

POINT_BATTLE_CLEAR_CENTER_WHITE=960,440
RGB_DEC_BATTLE_CLEAR_CENTER_WHITE=253,253,253

POINT_BATTLE_CLEAR_CENTER_BROWN=960,417
RGB_DEC_BATTLE_CLEAR_CENTER_BROWN=178,135,80

POINT_BATTLE_CLEAR_LETTER_T_PINK=791,1045
RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK=185,121,115
#244,157,145
#125,84,84

POINT_BATTLE_CLEAR_LETTER_N_PINK=1136,1042
RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK=190,120,113
#252,157,144
#127,83,82


POINT_LEVEL_UP_LEFT_PINK=164,352
RGB_DEC_LEVEL_UP_LEFT_PINK=224,80,107

POINT_LEVEL_UP_TOP_PINK=460,52
RGB_DEC_LEVEL_UP_TOP_PINK=255,187,192

POINT_LEVEL_UP_BOTTOM_PINK=463,1019
RGB_DEC_LEVEL_UP_BOTTOM_PINK=255,239,232


POINT_PLAYER_LV_UP_CAPTION_BROWN=960,400
RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN=178,135,80

POINT_PLAYER_LV_UP_LETTER_B_PURPLE=861,720
RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE=91,48,114

POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE=965,883
RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE=255,255,255


POINT_STORY_PLACE_TEXT_PURPLE=239,167
RGB_DEC_STORY_PLACE_TEXT_PURPLE=121,74,184

POINT_STORY_IROHA_TEXT_GREY=565,928
RGB_DEC_STORY_IROHA_TEXT_GREY=90,90,90

POINT_BATTLE_MENU_ENTRY_PURPLE=1125,572
RGB_DEC_BATTLE_MENU_ENTRY_PURPLE=131,91,206

POINT_BATTLE_MENU_ENTRY_TEXT_WHITE=1310,574
RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE=255,255,255

POINT_AP_REFILL_BUTTON_WHITE=1157,56
RGB_DEC_AP_REFILL_BUTTON_WHITE=255,255,255


POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN=1867,52
RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN=195,163,104

POINT_AP_REFILL_CAPTION_LETTER_P_WHITE=925,129
RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE=255,255,255

POINT_AP_REFILL_CAPTION_BG_BROWN=947,129
RGB_DEC_AP_REFILL_CAPTION_BG_BROWN=164,123,72

POINT_GREEN_AP_DRUG_BUTTON_TEXT=413,908
POINT_RED_AP_DRUG_BUTTON_TEXT=935,908
RGB_DEC_AP_DRUG_BUTTON_WHITE=255,255,255
RGB_DEC_AP_DRUG_BUTTON_GREY=191,191,191


POINT_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN=1555,232
RGB_DEC_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN=195,163,104

POINT_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE=884,309
RGB_DEC_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE=255,255,255

POINT_AP_REFILL_CONFIRM_CAPTION_BG_BROWN=919,309
RGB_DEC_AP_REFILL_CONFIRM_CAPTION_BG_BROWN=164,123,72

POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE=1131,733
RGB_DEC_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE=255,255,255


POINT_BATTLE_CLEAR_EXP_BAR_BROWN=821,479
RGB_DEC_BATTLE_CLEAR_EXP_BAR_BROWN=178,135,80


POINT_RESTART_BUTTON_TEXT_WHITE=1749,1000
RGB_DEC_RESTART_BUTTON_TEXT_WHITE=255,255,255

POINT_RESTART_BUTTON_LEFT_YELLOW=1631,996
RGB_DEC_RESTART_BUTTON_LEFT_YELLOW=252,230,139

POINT_RESTART_BUTTON_RIGHT_YELLOW=1853,996
RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW=253,234,145


capture_screen()
{
  if grep -q "^tmpfs /data/local/tmp/tmpfs tmpfs" /proc/mounts;
  then
    echo "capture_screen: tmpfs mounted." >&2
  else
    echo "capture_screen: tmpfs not mounted." >&2
    exit 1
  fi
  mkdir -p /data/local/tmp/tmpfs/magireco
  if [ ! -d /data/local/tmp/tmpfs/magireco ];
  then
    echo "Directory /data/local/tmp/tmpfs/magireco does not exist." >&2
    exit 1
  fi
  cd /data/local/tmp/tmpfs/magireco
  rm -f screen.dump
  screencap screen.dump
}

get_pixel_color()
{
  POS_X=$1
  POS_Y=$2
  if (( POS_X >= 1920 ));
  then
    echo "POS_X out of range." >&2
    exit 1
  fi
  if (( POS_Y >= 1080 ));
  then
    echo "POS_Y out of range." >&2
    exit 1
  fi
  OFFSET=$(( 16 + ( POS_Y * 1920 + POS_X ) * 4 ))
  if [ ! -f /data/local/tmp/tmpfs/magireco/screen.dump ]; then
    echo "File screen.dump does not exist." >&2
    exit 1
  fi
  RGB_HEX=$(dd if=screen.dump bs=1 count=3 skip=$OFFSET 2> /dev/null | xxd -p | tr abcdef ABCDEF)
  PX_R=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:0:2}; } | bc )
  PX_G=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:2:2}; } | bc )
  PX_B=$( { echo "obase=10; ibase=16";echo ${RGB_HEX:4:2}; } | bc )
  echo "X=${POS_X} Y=${POS_Y} RGB_HEX=${RGB_HEX} R,G,B=${PX_R},${PX_G},${PX_B}" >&2
}

tap_screen_shifted()
{
  if [[ "$2" == "" ]];then
    TAP_X=$(echo $1 | tr ',' ' ' | awk '{print $1}')
    TAP_Y=$(echo $1 | tr ',' ' ' | awk '{print $2}')
  else
    TAP_X=$1
    TAP_Y=$2
  fi
  TAP_X_RAND=$(( TAP_X - 8 + (RANDOM % 16) ))
  TAP_Y_RAND=$(( TAP_Y - 8 + (RANDOM % 16) ))
  #sleep $((RANDOM/10000)).$(printf "%0.4d" $((RANDOM%10000)) )
  #sleep 0.$(printf "%0.4d" $((RANDOM%10000)) )
  echo "TAP_X=${TAP_X} TAP_Y=${TAP_Y}" >&2
  input tap $TAP_X_RAND $TAP_Y_RAND
  echo "input tap ${TAP_X_RAND} ${TAP_Y_RAND}" >&2
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
#  echo "RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}" >&2
#}

test_point()
{
  POS_X_Y=$(echo $1 | tr ',' ' ')
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

  echo "R,G,B=${PX_R},${PX_G},${PX_B} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}" >&2

  if (( RANGE == 0 ));
  then
    if (( PX_R == PX_R_EXPECTED )) && (( PX_G == PX_G_EXPECTED )) && (( PX_B == PX_B_EXPECTED ));
    then
      echo "test_point matched." >&2
      return 0
    else
      echo "test_point not matched." >&2
      return 1
    fi
  elif (( RANGE > 0 ));
  then
    if (( PX_R_EXPECTED - PX_R <= RANGE )) && (( PX_R - PX_R_EXPECTED <= RANGE )) && \
       (( PX_G_EXPECTED - PX_G <= RANGE )) && (( PX_G - PX_G_EXPECTED <= RANGE )) && \
       (( PX_B_EXPECTED - PX_B <= RANGE )) && (( PX_B - PX_B_EXPECTED <= RANGE ));
    then
      echo "test_point is within the RANGE=${RANGE}." >&2
      return 0
    else
      echo "test_point is outside the RANGE=${RANGE}." >&2
      return 1
    fi
  else
    echo "test_point RANGE should be greater than zero." >&2
    return 1
  fi
#  rgb_dec_to_hex $3
#  if [[ "${RGB_HEX}" == "${RGB_HEX_EXPECTED}" ]];then
#    echo "test_point matched." >&2
#    return 0
#  else
#    echo "test_point not matched." >&2
#    return 1
#  fi
}

get_battery_temperature()
{
  BATT_TEMP=$(dumpsys battery | grep -i "temperature" | awk '{print $2}')
  echo "BATT_TEMP=${BATT_TEMP}" >&2
}

prevent_overheat()
{
  OVERHEAT=0
  while true; do
    get_battery_temperature
    (( OVERHEAT )) || OVERHEAT=$(( BATT_TEMP >= 400 ))
    (( OVERHEAT )) || break
    (( BATT_TEMP < 376 )) && break
    echo "Pause process for 15 sec." >&2
    input keyevent HOME
    sleep 15
    echo "Continue process." >&2
    am start com.bilibili.madoka.bilibili/jp.f4samurai.AppActivity
    sleep 1
    STUCK_SINCE_UNIX=$(date +%s)
  done
}



STATUS="SUPPORT_CHARA_SEL"
LAST_STATUS=""
STUCK_COUNT=0
CYCLE=0
STUCK_SINCE_UNIX=$(date +%s)
if [[ "$1" != "" ]];then AP=$1; fi

while true; do
  echo -ne "\n" >&2
  if (( AP > 0 ));
  then
    echo -ne "AP=${AP} " >&2
  fi
  echo "CYCLE=${CYCLE} STATUS=${STATUS}" >&2
  if [[ "${STATUS}" == "${LAST_STATUS}" ]];
  then
    ((STUCK_COUNT++))
    CURRENT_UNIX=$(date +%s)
    if (( CURRENT_UNIX - STUCK_SINCE_UNIX > 300 ));
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
    if test_point ${POINT_RIGHT_EDGE_PURPLE} 0 ${RGB_DEC_RIGHT_EDGE_PURPLE} && \
       test_point ${POINT_FOLLOWING_PINK} 0 ${RGB_DEC_FOLLOWING_PINK} && \
       test_point ${POINT_FOLLOWING_WHITE} 0 ${RGB_DEC_FOLLOWING_WHITE} && \
       test_point ${POINT_FOLLOWER_BLUE} 0 ${RGB_DEC_FOLLOWER_BLUE} && \
       test_point ${POINT_FOLLOWER_WHITE} 0 ${RGB_DEC_FOLLOWER_WHITE};then
      #Mutually following player on 3rd slot
      tap_screen_shifted 1600 900
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PURPLE} -244 ${RGB_DEC_RIGHT_EDGE_PURPLE} && \
         test_point ${POINT_FOLLOWING_PINK} -244 ${RGB_DEC_FOLLOWING_PINK} && \
         test_point ${POINT_FOLLOWING_WHITE} -244 ${RGB_DEC_FOLLOWING_WHITE} && \
         test_point ${POINT_FOLLOWER_BLUE} -244 ${RGB_DEC_FOLLOWER_BLUE} && \
         test_point ${POINT_FOLLOWER_WHITE} -244 ${RGB_DEC_FOLLOWER_WHITE};
    then
      #Mutually following player on 2nd slot
      tap_screen_shifted 1600 $((900-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PINK} 244 ${RGB_DEC_RIGHT_EDGE_PINK};
    then
      #NPC on 2nd slot
      tap_screen_shifted 1600 $((900-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PINK} 0 ${RGB_DEC_RIGHT_EDGE_PINK};
    then
      #NPC on 1st slot
      tap_screen_shifted 1600 $((900-244-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PURPLE} -488 ${RGB_DEC_RIGHT_EDGE_PURPLE} && \
         test_point ${POINT_FOLLOWING_PINK} -488 ${RGB_DEC_FOLLOWING_PINK} && \
         test_point ${POINT_FOLLOWING_WHITE} -488 ${RGB_DEC_FOLLOWING_WHITE} && \
         test_point ${POINT_FOLLOWER_BLUE} -488 ${RGB_DEC_FOLLOWER_BLUE} && \
         test_point ${POINT_FOLLOWER_WHITE} -488 ${RGB_DEC_FOLLOWER_WHITE};
    then
      #Mutually following player on 1st slot
      tap_screen_shifted 1600 $((900-244-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_CONFIRM_START" ]];
  then
    if ((CYCLE % 3 == 1));
    then
      prevent_overheat
    fi
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 2 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 2 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 2;
    then
      CONFIRM_BUTTON_SHOWED=0
      STATUS="CLICKING_CONFIRM_BUTTON"
    fi
  elif [[ "${STATUS}" == "CLICKING_CONFIRM_BUTTON" ]];
  then
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 2 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 2 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 2;
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
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 2;
    then
      echo "PLAYER LEVEL UP" >&2
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90;
    then
      STATUS="BATTLE_CLEAR"
    fi
  elif [[ "${STATUS}" == "LEVEL_UP" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      tap_screen_shifted 33 $((1080-34))
    elif test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN};
    then
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
      then
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      elif test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
           test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90;
      then
        STATUS="BATTLE_CLEAR"
      fi
    fi
  elif [[ "${STATUS}" == "PLAYER_LEVEL_UP" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 2;
    then
      tap_screen_shifted ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE}
    elif test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} && \
         test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN};
    then
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
      then
        #Shouldn't go there.
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      elif test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 90 && \
           test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 90;
      then
        #Normal situation, go back to battle clear screen.
        STATUS="BATTLE_CLEAR"
      fi
    fi
  elif [[ "${STATUS}" == "BATTLE_CLEAR" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 2;
    then
      echo "PLAYER LEVEL UP" >&2
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN};
    then
      if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
         test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
         test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
      then
        STATUS="CLICK_RESTART"
        RESTART_BUTTON_SHOWED=0
      else
        if test_point ${POINT_BATTLE_CLEAR_EXP_BAR_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_EXP_BAR_BROWN} 16;
        then
          ((BATTLE_CLEAR_EXP_BAR_SHOWED++))
          if ((BATTLE_CLEAR_EXP_BAR_SHOWED%20==1));
          then
            tap_screen_shifted 33 $((1080-34))
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
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 2;
    then
      echo "PLAYER LEVEL UP" >&2
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
    then
      STATUS="CLICK_RESTART"
      RESTART_BUTTON_SHOWED=0
    else
      ((RESTART_BUTTON_MISSING++))
      if ((RESTART_BUTTON_MISSING >= 3));
      then
        STATUS="AP_EXHAUSTION"
        tap_screen_shifted 33 $((1080-34))
      fi
      sleep 0.3
    fi
  elif [[ "${STATUS}" == "AP_EXHAUSTION" ]];
  then
    #Should be the battle selection menu of chap.2 sec.1
    if test_point ${POINT_STORY_PLACE_TEXT_PURPLE} 0 ${RGB_DEC_STORY_PLACE_TEXT_PURPLE} 16 && \
       test_point ${POINT_STORY_IROHA_TEXT_GREY} 0 ${RGB_DEC_STORY_IROHA_TEXT_GREY} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_PURPLE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_PURPLE} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE} 2 && \
       test_point ${POINT_AP_REFILL_BUTTON_WHITE} 0 ${RGB_DEC_AP_REFILL_BUTTON_WHITE} 2 2;
    then
      tap_screen_shifted ${POINT_AP_REFILL_BUTTON_WHITE}
      STATUS="AP_REFILL"
    fi
  elif [[ "${STATUS}" == "AP_REFILL" ]];
  then
    if test_point ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CAPTION_LETTER_P_WHITE} 0 ${RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE} 2 && \
       test_point ${POINT_AP_REFILL_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CAPTION_BG_BROWN} 16;
    then
      if test_point ${POINT_GREEN_AP_DRUG_BUTTON_TEXT} 0 ${RGB_DEC_AP_DRUG_BUTTON_WHITE} 2;
      then
        tap_screen_shifted ${POINT_GREEN_AP_DRUG_BUTTON_TEXT}
        STATUS="AP_REFILL_CONFIRM"
      elif test_point ${POINT_RED_AP_DRUG_BUTTON_TEXT} 0 ${RGB_DEC_AP_DRUG_BUTTON_WHITE} 2;
      then
        tap_screen_shifted ${POINT_RED_AP_DRUG_BUTTON_TEXT}
        STATUS="AP_REFILL_CONFIRM"
      else
        echo "AP drug exhausted." >&2
        input keyevent HOME
        break
      fi
    fi
  elif [[ "${STATUS}" == "AP_REFILL_CONFIRM" ]];
  then
    if test_point ${POINT_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CAPTION_TEXT_WHITE} 2 && \
       test_point ${POINT_AP_REFILL_CONFIRM_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CONFIRM_CAPTION_BG_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE} 2;
    then
      tap_screen_shifted ${POINT_AP_REFILL_CONFIRM_BUTTON_TEXT_WHITE}
      STATUS="AP_REFILLED"
    fi
  elif [[ "${STATUS}" == "AP_REFILLED" ]];
  then
    #Back to AP refill window again.
    if test_point ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 0 ${RGB_DEC_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN} 16 && \
       test_point ${POINT_AP_REFILL_CAPTION_LETTER_P_WHITE} 0 ${RGB_DEC_AP_REFILL_CAPTION_LETTER_P_WHITE} 2 && \
       test_point ${POINT_AP_REFILL_CAPTION_BG_BROWN} 0 ${RGB_DEC_AP_REFILL_CAPTION_BG_BROWN} 16;
    then
      tap_screen_shifted ${POINT_AP_REFILL_CLOSE_WINDOW_CROSS_SIGN_BROWN}
      STATUS="AP_REFILL_WINDOW_CLOSED"
    fi
  elif [[ "${STATUS}" == "AP_REFILL_WINDOW_CLOSED" ]];
  then
    #Again, should be the battle selection menu of chap.2 sec.1
    if test_point ${POINT_STORY_PLACE_TEXT_PURPLE} 0 ${RGB_DEC_STORY_PLACE_TEXT_PURPLE} 16 && \
       test_point ${POINT_STORY_IROHA_TEXT_GREY} 0 ${RGB_DEC_STORY_IROHA_TEXT_GREY} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_PURPLE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_PURPLE} 16 && \
       test_point ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE} 0 ${RGB_DEC_BATTLE_MENU_ENTRY_TEXT_WHITE} 2 && \
       test_point ${POINT_AP_REFILL_BUTTON_WHITE} 0 ${RGB_DEC_AP_REFILL_BUTTON_WHITE} 2 2;
    then
      #chap.2 sec.1 battle.4
      tap_screen_shifted ${POINT_BATTLE_MENU_ENTRY_TEXT_WHITE}
      STATUS="SUPPORT_CHARA_SEL"
    fi
  elif [[ "${STATUS}" == "CLICK_RESTART" ]];
  then
    if test_point ${POINT_PLAYER_LV_UP_CAPTION_BROWN} 0 ${RGB_DEC_PLAYER_LV_UP_CAPTION_BROWN} 16 && \
       test_point ${POINT_PLAYER_LV_UP_LETTER_B_PURPLE} 0 ${RGB_DEC_PLAYER_LV_UP_LETTER_B_PURPLE} 16 && \
       test_point ${POINT_PLAYER_LV_UP_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_PLAYER_LV_UP_BUTTON_TEXT_WHITE};
    then
      echo "PLAYER LEVEL UP" >&2
      STATUS="PLAYER_LEVEL_UP"
      continue
    fi
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
      continue
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
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
      if (( AP > 0 ));then
        if (( CYCLE * 3 >= AP ));then
          input keyevent HOME
          break
        fi
      fi
      STATUS="SUPPORT_CHARA_SEL"
    fi
  fi
done
