#!/bin/bash
#cgh_back2.sh
# Si llegaste hasta aqui, No Reproduscas Copias de este ADM
# ERES ADMIRABLE, al lograr llegar hasta aqui
killall apt apt-get &> /dev/null
cd $HOME
rm -f instala.* > /dev/null
[[ $(dpkg --get-selections|grep -w "gawk"|head -1) ]] || apt-get install gawk -y &>/dev/null
Dire="s"
[[ $(dpkg --get-selections|grep -w "mlocate"|head -1) ]] || apt-get install mlocate -y &>/dev/null
rm $(pwd)/$0 &> /dev/null
msg () {
BRAN='\033[1;37m' && VERMELHO='\e[31m' && VERDE='\e[32m' && AMARELO='\e[33m'
AZUL='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' &&NEGRITO='\e[1m' && SEMCOR='\e[0m'
 case $1 in
  -ne)cor="${VERMELHO}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -ama)cor="${AMARELO}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm)cor="${AMARELO}${NEGRITO}[!] ${VERMELHO}" && echo -e "${cor}${2}${SEMCOR}";;
  -azu)cor="${MAG}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verd)cor="${VERDE}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -bra)cor="${BRAN}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -bar2)cor="${AZUL}${NEGRITO}◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈" && echo -e "${cor}${SEMCOR}";;
  -bar)cor="${AZUL}${NEGRITO}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈" && echo -e "${cor}${SEMCOR}";;
 esac
}
Dire="s"
fun_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
fecha=`date +"%d-%m-%y"`;
dom='base64 -d'
SCPdir="/etc/adm-lite"
SCPinstal="$HOME/install"
SCParq="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1Rob255RHJvaWRZVC9URC1HZW4vbWFzdGVyL011bHRpR2VuL05FVy1BRE0tQ2h1bW9HSC9nZXJhZG9y-ZXJhZG9y"
SCPidioma="${SCPdir}"
SCPusr="${SCPdir}"
SCPfrm="${SCPdir}"
SCPinst="${SCPdir}"
## root check
if ! [ $(id -u) = 0 ]; then
clear
		echo ""
		msg -bar #echo "◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈ "
		echo " 	           	⛑⛑⛑     Error Fatal!! x000e1  ⛑⛑⛑"
		msg -bar #echo "◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈ "
		echo "                    ✠ Este script debe ejecutarse como root! ✠"

		echo "                              Como Solucionarlo "
		
		echo "                            Ejecute el script así:"
		echo "                               ⇘     ⇙ "
		echo "                                   sudo -i "
		echo "                                   sudo su"
		echo "                                 Retornando . . ."
		echo $(date)
		msg -bar
		exit
fi
Domi="https://www.dropbox.com"
update_pak () {
dpkg --configure -a
unset Key > /dev/null 2>&1 && echo -e "\033[1;31m- \033[1;32mExito!" || echo -e "\033[1;31m- \033[1;31mFallo"
apt-get install software-properties-common -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
apt-add-repository universe -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install SysBanner"
apt install sysvbanner -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install Lolcat   "
apt install lolcat -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install Figlet   "
apt install figlet -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install Cowsay   "
apt install cowsay -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
sleep 2s
return
}

fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
echo -ne "\033[1;33m ["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;33m ["
done
echo -e "\033[1;33m]\033[1;31m -\033[1;32m 100%\033[1;37m"
}

fun_bar 'update_pak'
echo -e " LOLCAT - FIGLET - COWSAY - TOILET INSTALADOS CORRECTAMENTE "| lolcat
function_verify () {
  echo "verify" > $(echo -e $(echo 2f62696e2f766572696679737973|sed 's/../\\x&/g;s/$/ /'))
}

instalar_fun () {
cd /etc/adm-lite && bash cabecalho --instalar
}

install_fim () {
cd /etc/adm-lite && bash cabecalho --fims
echo $Key > /bin/ejecutar/key.fix
}
ofus () {
unset txtofus
number=$(expr length $1)
for((i=1; i<$number+1; i++)); do
txt[$i]=$(echo "$1" | cut -b $i)
case ${txt[$i]} in
".")txt[$i]="+";;
"+")txt[$i]=".";;
"1")txt[$i]="@";;
"@")txt[$i]="1";;
"2")txt[$i]="?";;
"?")txt[$i]="2";;
"3")txt[$i]="%";;
"%")txt[$i]="3";;
"/")txt[$i]="K";;
"K")txt[$i]="/";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}
verificar_arq () {
echo $1 > $HOME/log.txt
#cd ${SCPinstal}
}
fun_ip

valid_fun () {
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
mkdir /etc/adm-lite
cd /etc/adm-lite
echo "cd /etc/adm-lite && bash ./menu" > /bin/menu
echo "cd /etc/adm-lite && bash ./menu" > /bin/cgh
echo "cd /etc/adm-lite && bash ./menu" > /bin/adm
chmod +x /bin/menu
chmod +x /bin/cgh
chmod +x /bin/adm
cd /etc/adm-lite
touch /etc/adm-lite/index.html
mv -f ${SCPinstal}/* /etc/adm-lite/
cd $HOME
echo -e "${cor[3]} $(source trans -b pt:${id} "AGREGANDO PAQUETES, y SERVICIOS NECESARIOS")"
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
chmod +x /etc/adm-lite/*
instalar_fun
#function_verify
sleep 1s 
}

invalid_key () {
echo -e ' '
msg -bar && msg -verm "Key Failed! " && msg -bar
[[ -e $HOME/lista-arq ]] && rm $HOME/lista-arq
cd $HOME
[[ -d $HOME/chumogh ]] && rm -rf $HOME/chumogh
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
[[ -d $HOME/chumogh ]] && rm -rf $HOME/chumogh
[[ -e /bin/menu ]] && rm /bin/menu
[[ -e $HOME/chumogh ]] && rm -rf $HOME/chumogh
rm -f instala.*  > /dev/null
rm -f /bin/cgh > /dev/null
rm -rf /bin/ejecutar > /dev/null
unset Key > /dev/null 2>&1 && echo -e "\033[1;31m- \033[1;32mExito!" || echo -e "\033[1;31m- \033[1;31mFallo" > error.log
cowsay  "☆ChumoGH☆ ADM SCRIPT Te agradece por preferirnos, pero desafortunadamente tu Key es INVALIDA" > error.log
echo "Key Invalida, Contacta con el Desarrolador" >> error.log
echo "  ● Compra Keys al +593987072611 " >> error.log
echo -e ' t.me/ChumoGH  - @ChumoGH' >> error.log
cat error.log | lolcat
exit
}

REQUEST2=$(ofus "$Key"|cut -d'/' -f2)
REQUEST=$(echo $SCParq|$dom)
#while [[ ! $Key ]]; do
clear
cowsay -f stegosaurus "BIENVENIDO Y GRACIAS POR UTILIZAR - - - - - - - -【 ★ ChumoGH ★ 】 ADM 2021 "| lolcat
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\033[1;32m ◈ ━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━ ◈"
#msg -ne "Key de Instalacion: " && read Key
#tput cuu1 && tput dl1
#done
cd $HOME
msg -ne "Key: "
#fun_bar
fun_bar
wget -O ${SCPinstal}/lista-arq $Domi/$Dire/$Subdire/lista > /dev/null 2>&1
echo -e "\033[1;34m [ \033[1;32mVERIFICANDO\033[1;34m ]"
#wget -O $HOME/lista-arq $(ofus "$Key")/$IP > /dev/null 2>&1 && echo -e "\033[1;34m [ \033[1;32mVERIFICANDO\033[1;34m ]" || {
#wget -O $HOME/lista-arq ${REQUEST}/lista-arq > /dev/null 2>&1 && echo -e "\033[1;34m [ \033[1;32mVERIFICANDO\033[1;34m ]"# || {
#   #invalid_key
#   #}
echo -e "\033[1;32m Verified"
Key="qra-atsilK0@84%ab97cda8f?K8888:8@@+95+84?+94@"
IP="192.168.43.1" && echo "$IP" > /usr/bin/vendor_code
IP2=$(ofus "$Key" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') && echo "$IP" > /usr/bin/vendor_code
sleep 2s
updatedb
#if [[ -e $HOME/lista-arq ]] && [[ ! $(cat $HOME/lista-arq|grep "KEY INVALIDA!") ]]; then
cor[1]="\033[1;36m"
cor[2]="\033[1;33m"
cor[3]="\033[1;31m"
cor[5]="\033[1;32m"
cor[4]="\033[0m"
cd $HOME
clear
locale-gen en_US.UTF-8 > /dev/null 2>&1
update-locale LANG=en_US.UTF-8 > /dev/null 2>&1
apt-get install gawk -y > /dev/null 2>&1
wget -O trans https://git.io/trans -o /dev/null 2>&1
mv -f ./trans /bin/ && chmod 777 /bin/*
#else
#invalid_key
#fi
cowsay -f ghostbusters "    ESCOJE TU IDIOMA DE PRERENCIA"| lolcat
echo -e "${cor[1]}==================================" | lolcat
echo -e "${cor[2]}       (Default : Español)\n${cor[1]}==================================\n${cor[2]}   [1]-BRASILEÑO : [2]-INGLES\n   [3]-ESPAÑOL   : [4]-FRANCES\n   [5]-ITALIANO  : [6]-CHINO"
echo -e "${cor[1]}==================================" | lolcat
echo -ne " ESCOJE: "; read lang
case $lang in
1)
id="pt"
;;
2)
id="en"
;;
3)
id="es"
;;
4)
id="fr"
;;
5)
id="it"
;;
5)
id="ch"
;;
*)
id="es"
;;
esac
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
echo -e ""
echo -e "${cor[2]}\n\033[1;37m  Script Patrocinado por: @ChumoGH - Henry Chumo"
echo -e ""
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
echo -e "${cor[5]} INSTALADOR ChumoGH-ADM ®"
echo -e "${cor[2]}◈ ━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━ ◈ "
echo -e "${cor[3]} Iniciando Instalacion del ADM..."
echo -e "${cor[3]} Script V4.2.1 Sujeto a Mejoras del MOD"
echo -e "${cor[1]} MEJORANDO PAQUETES DE DETECCIONES Y MULTILOGIN "
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈  "
[[ ! -d ${SCPinstal} ]] && mkdir ${SCPinstal}
for arqx in $(cat ${SCPinstal}/lista-arq); do
cd ${SCPinstal}
wget -i ${SCPinstal}/lista-arq > /dev/null 2>&1 && verificar_arq "${arqx}"  
#wget -O ${SCPinstal}/${arqx} ${IP}:81/${REQUEST}/${arqx} > /dev/null 2>&1 && verificar_arq "${arqx}"  
done
fun_bar 
echo -ne "${cor[4]}"
valid_fun
msg -bar2
cd $HOME
[[ -e $HOME/lista-arq ]] && rm $HOME/lista-arq  
[[ -e $HOME/lista ]] && rm $HOME/lista   
[[ -d ${SCPinstal} ]] && rm -rf ${SCPinstal} 
echo " Verified【 匚卄ㄩ爪ㄖᎶ卄 】 ADM 2021" > $HOME/exito
install_fim
#else
#invalid_key
#update-pack
#echo -e "\e[1;31mERROR- NO ESTAS PERMITIDO PARA INSTALARLO\e[0m"
#fi
