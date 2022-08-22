#!/bin/bash

echo "Iniciando Script"

echo "Criando Usuários"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd joao_ -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e


useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e


useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

echo "Criando arquivos e suas permissões"

mkdir /publico
mkdir /admin
mkdir /ven
mkdir /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando grupos e adicionando usuários"

groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

usermod carlos -g GRP_ADM
usermod maria -g GRP_ADM
usermod joao_ -g GRP_ADM

usermod debora -g GRP_VEN
usermod sebastiana -g GRP_VEN
usermod roberto -g GRP_VEN

usermod josefina -g GRP_SEC
usermod amanda -g GRP_SEC
usermod rogerio -g GRP_SEC

echo "Definindo donos para as pastas"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
