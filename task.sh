#!/bin/bash

message=$(cat message)
which=$(which kdialog) #установлен ли kdialog
email=$(sed -n '1p' config_alarm) #вывод первой строки из конфига
emailsms=$(sed -n '2p' config_alarm)
smtp=$(sed -n '3p' config_alarm)

if [ -z $which ]; #если which вывел пустую строку...
then
  notify-send "Achtung" $message
else
  kdialog --passivepopup $message 15
fi
sendemail -f $email -t $emailsms -o message-charset=utf-8 -u "Achtung" -m "$message" -o message-format=text/html -s $smtp