# KoriaginAlex_infra
KoriaginAlex Infra repository

## Подключение через к someinternalhost в одну команду
```
ssh -i alex -A alex@130.193.49.66 ssh alex@10.128.0.30 -tt
```

## Подключение через alias (ssh someinternalhost)
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

## Конфигурация
```
bastion_IP = 130.193.49.66
someinternalhost_IP = 10.128.0.30
```
## Подключение ДЗ№4
```
testapp_IP = 51.250.90.209
testapp_port = 9292
```
## CLI для создания ВМ через metadata
```
yc compute instance create --name reddit-app --hostname reddit-app --memory=4  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --metadata serial-port-enable=1 --metadata-from-file user-data=metadata.yaml
```
## Packer
Создали образ ВМ вручную;
Создали образ ВМ с параметрами:
```
packer build -var-file="variables.json" immutable.json
```
Создали скрипт для создания ВМ из образа, сразу с развернутым приложением (create-reddit-vm.sh)
```
http://51.250.83.93:9292/
```
