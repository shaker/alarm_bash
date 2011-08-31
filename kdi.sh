#!/bin/bash

message=$(cat message)
which=$(which kdialog) #установлен ли kdialog

if [ -z $which ]; #если which вывел пустую строку...
then
  notify-send "Achtung" $message
else
  kdialog --passivepopup $message 15
fi