#!/bin/bash
clear

tput setaf 2 ; tput bold ; echo "	SSH-KEY: USER - Script By @MajinBoo " ; tput sgr0

echo "$(tput bold) Select Language Script: $(tput sgr0)"

echo ""

echo "1. PT-BR"

echo "2. EN"

echo "3. ES"
echo ""
echo "0. Exit The Script"

echo ""

echo -n "What is the option? "

read opcao

case $opcao in

1)
clear
echo "Qual e o nome do usuário ?"
read nome

userdel $nome 1>/dev/null 2>/dev/null 
 
rm -rf /var/spool/mail/$nome 1>/dev/null 2>/dev/null 
rm -rf /home/$nome 1>/dev/null 2>/dev/null 
 

useradd $nome 
 
passwd $nome 


rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

clear
sleep 1
echo "$(tput bold) $nome , Nao Coloque Senha no Passphrase! $(tput sgr0)"
echo "$(tput bold) Apenas De Dois Enter No Proximo Passo, Ok. $(tput sgr0)"
sleep 2

ssh-keygen -t rsa -b 1024 -f id_rsa


mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

cat /root/id_rsa.pub >> /home/$nome/.ssh/id_rsa.pub

cat /root/id_rsa >> /home/$nome/.ssh/id_rsa

cat /root/id_rsa.pub >> /home/$nome/.ssh/authorized_keys

chmod 700 /home/$nome/.ssh 1>/dev/null 2>/dev/null

chmod 600 /home/$nome/.ssh/authorized_keys 1>/dev/null 2>/dev/null

chown -R $nome:$nome /home/$nome/.ssh 1>/dev/null 2>/dev/null

sleep 2
echo "$(tput bold) $nome Copie a Chave Abaixo! $(tput sgr0)"
echo "$(tput bold) Cole No Http Injector ou KPN Em Chave Publica e Use Sem a Necessidade de Senha SSH $(tput sgr0)"

sleep 2

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 
echo ""
echo ""

cat /home/$nome/.ssh/id_rsa
echo ""
echo ""
 
sleep 4
echo "$(tput bold) Chave Publica Gerada Com Sucesso. Script By @MajinBoo $(tput sgr0)"

;;

2)
clear
echo "What is the name of the user ?"
read nome

userdel $nome 1>/dev/null 2>/dev/null 
 
rm -rf /var/spool/mail/$nome 1>/dev/null 2>/dev/null 
rm -rf /home/$nome 1>/dev/null 2>/dev/null 
 

useradd $nome 
 
passwd $nome 


rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

clear
sleep 1
echo "$(tput bold) $nome , Do not Put Passphrase in the Passphrase! $(tput sgr0)"
echo "$(tput bold) Only Two Enter In The Next Step, Ok. $(tput sgr0)"
sleep 2

ssh-keygen -t rsa -b 1024 -f id_rsa


mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

cat /root/id_rsa.pub >> /home/$nome/.ssh/id_rsa.pub

cat /root/id_rsa >> /home/$nome/.ssh/id_rsa

cat /root/id_rsa.pub >> /home/$nome/.ssh/authorized_keys

chmod 700 /home/$nome/.ssh 1>/dev/null 2>/dev/null

chmod 600 /home/$nome/.ssh/authorized_keys 1>/dev/null 2>/dev/null

chown -R $nome:$nome /home/$nome/.ssh 1>/dev/null 2>/dev/null

sleep 2
echo "$(tput bold) $nome $nome Copy the Key Below!  $(tput sgr0)"
echo "$(tput bold) Paste In the Http Injector or KPN, the Public Key and Use it Without the Need of the Password for SSH $(tput sgr0)"
sleep 2

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 
echo ""
echo ""

cat /home/$nome/.ssh/id_rsa

echo ""
echo ""
sleep 4
echo "$(tput bold) Public key generated with success. Script By @MajinBoo $(tput sgr0)"

;;

3)
clear
echo "¿Cuál es el nombre del usuario ?"
read nome

userdel $nome 1>/dev/null 2>/dev/null 
 
rm -rf /var/spool/mail/$nome 1>/dev/null 2>/dev/null 
rm -rf /home/$nome 1>/dev/null 2>/dev/null 
 

useradd $nome 
 
passwd $nome 


rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

clear
sleep 1
echo "$(tput bold) $nome , No Coloque la Contraseña en el Passphrase! $(tput sgr0)"
echo "$(tput bold) Sólo Dos Entrar En El Siguiente Paso. $(tput sgr0)"
sleep 2

ssh-keygen -t rsa -b 1024 -f id_rsa


mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

cat /root/id_rsa.pub >> /home/$nome/.ssh/id_rsa.pub

cat /root/id_rsa >> /home/$nome/.ssh/id_rsa

cat /root/id_rsa.pub >> /home/$nome/.ssh/authorized_keys

chmod 700 /home/$nome/.ssh 1>/dev/null 2>/dev/null

chmod 600 /home/$nome/.ssh/authorized_keys 1>/dev/null 2>/dev/null

chown -R $nome:$nome /home/$nome/.ssh 1>/dev/null 2>/dev/null

sleep 2
echo "$(tput bold) $nome Copie la clave que sera generada a continuación! $(tput sgr0)"
echo "$(tput bold) Pegue En Http Inyector o KPN En Clave Publica y Utilizar Sin Necesidad de Contraseña SSH. $(tput sgr0)"
sleep 2

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 
echo ""
echo ""

cat /home/$nome/.ssh/id_rsa

echo ""
echo ""
 
sleep 4
echo "$(tput bold) Clave pública generada con éxito. Script By @MajinBoo $(tput sgr0)"
;;
0)
clear
echo "Coming out of the Script..."
exit
sleep 3
clear
;;
esac