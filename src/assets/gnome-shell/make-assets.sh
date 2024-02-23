#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Teal' '-Grey'; do
  for type in '' '-Nord' '-Dracula' '-Gruvbox' '-Everforest'; do
    case "$theme" in
      '')
        theme_color_dark='#3c84f7'
        theme_color_light='#5b9bf8'
        ;;
      -Purple)
        theme_color_dark='#AB47BC'
        theme_color_light='#BA68C8'
        ;;
      -Pink)
        theme_color_dark='#EC407A'
        theme_color_light='#F06292'
        ;;
      -Red)
        theme_color_dark='#E53935'
        theme_color_light='#F44336'
        ;;
      -Orange)
        theme_color_dark='#F57C00'
        theme_color_light='#FB8C00'
        ;;
      -Yellow)
        theme_color_dark='#FBC02D'
        theme_color_light='#FFD600'
        ;;
      -Green)
        theme_color_dark='#4CAF50'
        theme_color_light='#66BB6A'
        ;;
      -Teal)
        theme_color_dark='#009688'
        theme_color_light='#4DB6AC'
        ;;
      -Grey)
        theme_color_dark='#464646'
        theme_color_light='#DDDDDD'
        ;;
    esac

    if [[ "$type" == '-Nord' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#5e81ac'
          theme_color_light='#89a3c2'
          ;;
        -Purple)
          theme_color_dark='#b57daa'
          theme_color_light='#c89dbf'
          ;;
        -Pink)
          theme_color_dark='#cd7092'
          theme_color_light='#dc98b1'
          ;;
        -Red)
          theme_color_dark='#c35b65'
          theme_color_light='#d4878f'
          ;;
        -Orange)
          theme_color_dark='#d0846c'
          theme_color_light='#dca493'
          ;;
        -Yellow)
          theme_color_dark='#e4b558'
          theme_color_light='#eac985'
          ;;
        -Green)
          theme_color_dark='#82ac5d'
          theme_color_light='#a0c082'
          ;;
        -Teal)
          theme_color_dark='#63a6a5'
          theme_color_light='#83b9b8'
          ;;
        -Grey)
          theme_color_dark='#3a4150'
          theme_color_light='#d9dce3'
          ;;
      esac
    fi

    if [[ "$type" == '-Dracula' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Purple)
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Pink)
          theme_color_dark='#f04cab'
          theme_color_light='#ff79c6'
          ;;
        -Red)
          theme_color_dark='#f44d4d'
          theme_color_light='#ff5555'
          ;;
        -Orange)
          theme_color_dark='#f8a854'
          theme_color_light='#ffb86c'
          ;;
        -Yellow)
          theme_color_dark='#e8f467'
          theme_color_light='#f1fa8c'
          ;;
        -Green)
          theme_color_dark='#4be772'
          theme_color_light='#50fa7b'
          ;;
        -Teal)
          theme_color_dark='#20eed9'
          theme_color_light='#50fae9'
          ;;
        -Grey)
          theme_color_dark='#3c3f51'
          theme_color_light='#d9dae3'
          ;;
      esac
    fi

    if [[ "$type" == '-Gruvbox' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#458588'
          theme_color_light='#83a598'
          ;;
        -Purple)
          theme_color_dark='#ab62b1'
          theme_color_light='#d386cd'
          ;;
        -Pink)
          theme_color_dark='#b16286'
          theme_color_light='#d3869b'
          ;;
        -Red)
          theme_color_dark='#cc241d'
          theme_color_light='#fb4934'
          ;;
        -Orange)
          theme_color_dark='#d65d0e'
          theme_color_light='#fe8019'
          ;;
        -Yellow)
          theme_color_dark='#d79921'
          theme_color_light='#fabd2f'
          ;;
        -Green)
          theme_color_dark='#98971a'
          theme_color_light='#b8bb26'
          ;;
        -Teal)
          theme_color_dark='#689d6a'
          theme_color_light='#8ec07c'
          ;;
        -Grey)
          theme_color_dark='#3c3836'
          theme_color_light='#a89984'
          ;;
      esac
    fi
    if [[ "$type" == '-Everforest' ]]; then
      case "$theme" in 
        '')
          theme_color_light='#3a94c5'
          theme_color_dark='#'
          ;;
        -Purple)
          theme_color_light='#DF69ba'
          theme_color_dark='#cb8eab'
          ;;
        -Pink)
          theme_color_light='#df69ba'
          theme_color_dark='#b16286'
          ;;
        -Red)
          theme_color_light='#f85553'
          theme_color_dark='#db7375'
          ;;
        -Orange)
          theme_color_light='#f57d26'
          theme_color_dark='#db8d6a'
          ;;
        -Yellow)
          theme_color_light='#dfa000'
          theme_color_dark='#d0b174'
          ;;
        -Green)
          theme_color_light='#8da101'
          theme_color_dark='#9cb575'
          ;;
        -Teal)
          theme_color_light='#35a77c'
          theme_color_dark='#78b587'
          ;;
        -Grey)
          theme_color_light='#708089'
          theme_color_dark='#939f91'
          ;;
      esac
    fi
    if [[ "$type" != '' ]]; then
      rm -rf "theme${theme}${type}"
      cp -rf "theme" "theme${theme}${type}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}${type}"/*.svg
    elif [[ "$theme" != '' ]]; then
      rm -rf "theme${theme}"
      cp -rf "theme" "theme${theme}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}"/*.svg
    fi
  done
done

echo -e "DONE!"
