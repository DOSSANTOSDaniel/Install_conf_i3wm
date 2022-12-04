#!/bin/bash
#-*- coding: UTF8 -*-

#--------------------------------------------------#
# Script_Name: i3power.sh	                               
# Date: sam. 03 déc. 2022                                            
# Version: 1.0                                      
# Bash_Version: 5.1.16(1)-release                                     
#--------------------------------------------------#

set -eu

opt=$(echo "Logout|Shutdown|Reboot|Suspend|Annuler" | rofi -sep '|' -dmenu -p "Menu Power")
case $opt in
  "Logout")
    rofi -e "${opt}, taper entrée pour valider !"
    i3-msg exit &
    ;;
  "Shutdown")
    rofi -e "${opt}, taper entrée pour valider !"
    systemctl poweroff &
    ;;
  "Reboot")
    rofi -e "${opt}, taper entrée pour valider !"
    systemctl reboot &
    ;;
  "Suspend")
    rofi -e "${opt}, taper entrée pour valider !"
    systemctl suspend &
    ;;
  "Annuler") 
    rofi -e "Tâche annulé, taper entrée pour valider !"
    ;;
  *)
    rofi -e "Option invalide :${opt}, taper entrée pour annuler !"
    ;;
esac
