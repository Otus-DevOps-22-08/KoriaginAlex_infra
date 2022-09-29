# KoriaginAlex_infra
KoriaginAlex Infra repository

##Подключение через к someinternalhost в одну команду
```
ssh -i alex -A alex@130.193.49.66 ssh alex@10.128.0.30 -tt
```

##Подключение через alias (ssh someinternalhost)
создать конфигуационный файл config в .ssh/ следующего вида:
```
Host bastion
Hostname 130.193.49.66
User alex
IdentityFile ~/.ssh/alex

Host someinternalhost
Hostname 10.128.0.30
User alex
ProxyCommand ssh bastion nc %h %p
```
далее просто подключиться через ssh someinternalhost

##Конфигурация
```
bastion_IP = 130.193.49.66
someinternalhost_IP = 10.128.0.30
```
