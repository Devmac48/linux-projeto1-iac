#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM
useradd paulo -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM
useradd fernanda -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN
useradd carla -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN
useradd felipe -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN

useradd amanda -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC
useradd francisca -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC

echo "especificando permissões aos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim...."

