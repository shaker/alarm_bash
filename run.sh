#!/bin/bash

touch message #если файла такого нет
echo "$2" > message #пишем сообщение в файл

at -f task.sh $1 #планируем задание на нужное нам время $1