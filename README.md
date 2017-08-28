# network-settings-ubuntu
TOR - неплохой инструмент для анонимности и иногда необходимо через него пропускать не только трафик из вашего браузера (что делает например tor-browser), но и вообще трафик всей системы + не все необходимые вам программы могут поддерживать socks-прокси.
Установка и настройка TOR
<code>$ sudo apt-get install tor</code>
Переменную _tor_uid меняем на uid пользователя под которым работает tor. Определить это значение можно так:

<code>$ grep tor /etc/passwd
debian-tor:x:135:145::/var/lib/tor:/bin/false</code>

Первая цифра, то есть 135 - uid, меняем в скрипте iptables_setup.sh

_tor_uid="135"


Настройка DNS

Использовать ДНС-сервера от Google, либо чьи-нибудь ещё - плохая идея, т.к. они тотчас вас деанонимизируют. Будем использовать локальный ДНС средствами TOR. Для выполним следующее:

<code>$ sudo rm -f /etc/resolv.conf # удалим, т.к. иногда это сим-линк
$ echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf
</code>
Поскольку всякие NetworkManager очень любят перезаписывать этот файл - лучше его вообще залочить на запись:
<code>
$ sudo chattr +i /etc/resolv.conf</code>

chmod +x iptables_setup.sh
chmod +x netor.sh
chmod +x nechlebdebil.sh</code>

