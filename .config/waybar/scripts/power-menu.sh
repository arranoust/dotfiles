#!/usr/bin/env bash

config="$HOME/.config/rofi/config.rasi"

actions=$(echo -e "  Lock\n  Shutdown\n  Reboot\n$(printf '\u200A') Suspend\n  Logout")

# Display logout menu
selected_option=$(echo -e "$actions" | rofi -dmenu -i -config "${config}" || pkill -x rofi)

# Perform actions based on the selected option
case "$selected_option" in
*Lock)
  hyprlock
  ;;
*Shutdown)
  systemctl poweroff
  ;;
*Reboot)
  systemctl reboot
  ;;
*Suspend)
  systemctl suspend
  ;;
*Logout)
  hyprctl dispatch exit 0
  ;;
esac
