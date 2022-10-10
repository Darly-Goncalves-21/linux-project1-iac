#!/bin/bash
echo "Criando Diretorios..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Finalizando a criação dos diretorios"

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizando a criação dos grupos"


echo "Criando usúarios do sistema..."


useradd carlos -c "Carlos Antonio" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd joao -c "João Antonio" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd maria -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd amanda -c "Amanda Leite" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd leonardo -c "Leonardo Silva" -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico


echo "Finalizado..."

