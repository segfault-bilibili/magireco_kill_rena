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
TAP_X_RAND=$(( TAP_X - 32 + (RANDOM % 64) ))
TAP_Y_RAND=$(( TAP_Y - 32 + (RANDOM % 64) ))
#sleep $((RANDOM/10000)).$(printf "%0.4d" $((RANDOM%10000)) )
#sleep 0.$(printf "%0.4d" $((RANDOM%10000)) )
echo "TAP_X=${TAP_X} TAP_Y=${TAP_Y}" >&2
input tap $TAP_X_RAND $TAP_Y_RAND
echo "input tap ${TAP_X_RAND} ${TAP_Y_RAND}" >&2
}

rgb_dec_to_hex()
{
RGB_DEC_EXPECTED=$(echo $1 | tr ',' ' ')
PX_R_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $1}')
PX_G_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $2}')
PX_B_EXPECTED=$(echo ${RGB_DEC_EXPECTED} | awk '{print $3}')
RGB_HEX_EXPECTED=""
if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_R_EXPECTED}; } | bc )
if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_G_EXPECTED}; } | bc )
if (( PX_R_EXPECTED < 16 ));then RGB_HEX_EXPECTED="${RGB_HEX_EXPECTED}0"; fi
RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED}$( { echo "obase=16; ibase=10";echo ${PX_B_EXPECTED}; } | bc )
echo "RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}" >&2
}

test_point()
{
POS_X=$(echo $1 | tr ',' ' ' | awk '{print $1}')
POS_Y=$(echo $1 | tr ',' ' ' | awk '{print $2}')
POS_Y_OFFSET=$2
POS_Y=$((POS_Y + POS_Y_OFFSET))
get_pixel_color ${POS_X} ${POS_Y}
RANGE=$4
if [[ "${RANGE}" != "" ]] && (( RANGE > 0 ));then
  PX_R_EXPECTED=$(echo $3 | tr ',' ' ' | awk '{print $1}')
  PX_G_EXPECTED=$(echo $3 | tr ',' ' ' | awk '{print $2}')
  PX_B_EXPECTED=$(echo $3 | tr ',' ' ' | awk '{print $3}')
  echo "RGB_HEX_EXPECTED=${RGB_HEX_EXPECTED} R,G,B_EXPECTED=${PX_R_EXPECTED},${PX_G_EXPECTED},${PX_B_EXPECTED}" >&2
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
  rgb_dec_to_hex $3
  if [[ "${RGB_HEX}" == "${RGB_HEX_EXPECTED}" ]];then
    echo "test_point matched." >&2
    return 0
  else
    echo "test_point not matched." >&2
    return 1
  fi
fi
}


STATUS="SUPPORT_CHARA_SEL"
i=0
if [[ "$1" != "" ]];then AP=$1; fi
while sleep 0.25; do
  echo "\nSTATUS=${STATUS}" >&2
  capture_screen
  if [[ "${STATUS}" == "SUPPORT_CHARA_SEL" ]];
  then
    if test_point ${POINT_RIGHT_EDGE_PURPLE} 0 ${RGB_DEC_RIGHT_EDGE_PURPLE} && \
       test_point ${POINT_FOLLOWING_PINK} 0 ${RGB_DEC_FOLLOWING_PINK} && \
       test_point ${POINT_FOLLOWING_WHITE} 0 ${RGB_DEC_FOLLOWING_WHITE} && \
       test_point ${POINT_FOLLOWER_BLUE} 0 ${RGB_DEC_FOLLOWER_BLUE} && \
       test_point ${POINT_FOLLOWER_WHITE} 0 ${RGB_DEC_FOLLOWER_WHITE};then
      #Mutually following player on 3rd slot
      tap_screen_shifted 1000 900
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PURPLE} -244 ${RGB_DEC_RIGHT_EDGE_PURPLE} && \
         test_point ${POINT_FOLLOWING_PINK} -244 ${RGB_DEC_FOLLOWING_PINK} && \
         test_point ${POINT_FOLLOWING_WHITE} -244 ${RGB_DEC_FOLLOWING_WHITE} && \
         test_point ${POINT_FOLLOWER_BLUE} -244 ${RGB_DEC_FOLLOWER_BLUE} && \
         test_point ${POINT_FOLLOWER_WHITE} -244 ${RGB_DEC_FOLLOWER_WHITE};
    then
      #Mutually following player on 2nd slot
      tap_screen_shifted 1000 $((900-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PINK} 244 ${RGB_DEC_RIGHT_EDGE_PINK};
    then
      #NPC on 2nd slot
      tap_screen_shifted 1000 $((900-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    elif test_point ${POINT_RIGHT_EDGE_PINK} 0 ${RGB_DEC_RIGHT_EDGE_PINK};
    then
      #NPC on 1st slot
      tap_screen_shifted 1000 $((900-244-244))
      STATUS="WAIT_FOR_CONFIRM_START"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_CONFIRM_START" ]];
  then
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 2 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 2 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 2;
    then
      STATUS="CLICKING_CONFIRM_BUTTON"
    fi
  elif [[ "${STATUS}" == "CLICKING_CONFIRM_BUTTON" ]];
  then
    if test_point ${POINT_START_BUTTON_RIGHT_EDGE_YELLOW} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_YELLOW} 2 && \
       test_point ${POINT_START_BUTTON_RIGHT_EDGE_PINK} 0 ${RGB_DEC_START_BUTTON_RIGHT_EDGE_PINK} 2 && \
       test_point ${POINT_START_BUTTON_CENTER_WHITE} 0 ${RGB_DEC_START_BUTTON_CENTER_WHITE} 2;
    then
      tap_screen_shifted ${POINT_START_BUTTON_CENTER_WHITE}
    else
      STATUS="WAIT_FOR_BATTLE_CLEAR"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_BATTLE_CLEAR" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
    fi
    if test_point ${POINT_BATTLE_CLEAR_LEFT_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_LEFT_BROWN} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_WHITE} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_WHITE} && \
       test_point ${POINT_BATTLE_CLEAR_CENTER_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_CENTER_BROWN} && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 70 && \
       test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 70;
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
      elif test_point ${POINT_BATTLE_CLEAR_LETTER_T_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_T_PINK} 70 && \
           test_point ${POINT_BATTLE_CLEAR_LETTER_N_PINK} 0 ${RGB_DEC_BATTLE_CLEAR_LETTER_N_PINK} 70;
      then
        STATUS="BATTLE_CLEAR"
      fi
    fi
  elif [[ "${STATUS}" == "BATTLE_CLEAR" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
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
      else
        if test_point ${POINT_BATTLE_CLEAR_EXP_BAR_BROWN} 0 ${RGB_DEC_BATTLE_CLEAR_EXP_BAR_BROWN};
        then
          tap_screen_shifted 33 $((1080-34))
        fi
      fi
    else
      STATUS="WAIT_FOR_RESTART_BUTTON"
    fi
  elif [[ "${STATUS}" == "WAIT_FOR_RESTART_BUTTON" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
    then
      STATUS="CLICK_RESTART"
    fi
  elif [[ "${STATUS}" == "CLICK_RESTART" ]];
  then
    if test_point ${POINT_LEVEL_UP_LEFT_PINK} 0 ${RGB_DEC_LEVEL_UP_LEFT_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_TOP_PINK} 0 ${RGB_DEC_LEVEL_UP_TOP_PINK} 2 && \
       test_point ${POINT_LEVEL_UP_BOTTOM_PINK} 0 ${RGB_DEC_LEVEL_UP_BOTTOM_PINK} 2;
    then
      echo "LEVEL UP" >&2
      STATUS="LEVEL_UP"
    fi
    if test_point ${POINT_RESTART_BUTTON_TEXT_WHITE} 0 ${RGB_DEC_RESTART_BUTTON_TEXT_WHITE} && \
       test_point ${POINT_RESTART_BUTTON_LEFT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_LEFT_YELLOW} 2 && \
       test_point ${POINT_RESTART_BUTTON_RIGHT_YELLOW} 0 ${RGB_DEC_RESTART_BUTTON_RIGHT_YELLOW} 2;
    then
      tap_screen_shifted ${POINT_RESTART_BUTTON_TEXT_WHITE}
    else
      if (( AP > 0 ));then
        ((i++))
        if (( i * 3 >= AP ));then
          input keyevent HOME
          break
        fi
      fi
      STATUS="SUPPORT_CHARA_SEL"
    fi
  fi
done
