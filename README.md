# network-settings-ubuntu
TOR - неплохой инструмент для анонимности и иногда необходимо через него пропускать не только трафик из вашего браузера (что делает например tor-browser), но и вообще трафик всей системы + не все необходимые вам программы могут поддерживать socks-прокси.
Установка и настройка TOR
$ sudo apt-get install tor
Настройка DNS

Использовать ДНС-сервера от Google, либо чьи-нибудь ещё - плохая идея, т.к. они тотчас вас деанонимизируют. Будем использовать локальный ДНС средствами TOR. Для выполним следующее:

$ sudo rm -f /etc/resolv.conf # удалим, т.к. иногда это сим-линк
$ echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf

Поскольку всякие NetworkManager очень любят перезаписывать этот файл - лучше его вообще залочить на запись:

$ sudo chattr +i /etc/resolv.conf

