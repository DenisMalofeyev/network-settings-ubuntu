#!/bin/bash

echo "Выберите тип подключения:"
echo "1 работа через тор"
echo "2 работа с реального ip"
read doing
case $doing in
1) sudo ./iptables_setup.sh
;;
2) sudo ./netor.sh
;;
*) #если введено с клавиатуры то, что в case не описывается, выполнять следующее:
echo "Введено неправильное действие"

esac #окончание оператора case
