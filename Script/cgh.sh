#!/bin/bash
# Si llegaste hasta aqui, No Reproduscas Copias de este ADM
# ERES ADMIRABLE, al lograr llegar hasta aqui
killall apt apt-get &> /dev/null
function_verify () {
  echo "verify" > $(echo -e $(echo 2f62696e2f766572696679737973|sed 's/../\\x&/g;s/$/ /'))
}

fun_bar 'update_pak'
echo -e " LOLCAT - FIGLET - COWSAY - TOILET INSTALADOS CORRECTAMENTE "| lolcat

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

DOMI="https://raw.githubusercontent.com"
instalar_fun () {
cd /etc/adm-lite && bash cabecalho --instalar
}
install_fim () {
cd /etc/adm-lite && bash cabecalho --fims
#echo $Key > /bin/ejecutar/key.fix
#echo " Verified【 匚卄ㄩ爪ㄖᎶ卄 】 ADM 2021" > /bin/ejecutar/key.fix
}

elimined_fun () {
text=$(source trans -b pt:${id} "Instalando")
echo -e "${cor[2]} Update"
fun_bar 'apt-get install screen' 'apt-get install python'
echo -e "${cor[2]} Upgrade"
fun_bar 'apt-get install lsof' 'apt-get install python3-pip'
echo -e "${cor[2]} $text Lsof"
fun_bar 'apt-get install python' 'apt-get install unzip'
echo -e "${cor[2]} $text Python3"
fun_bar 'apt-get install zip' 'apt-get install apache2'
echo -e "${cor[2]} $text Unzip"
fun_bar 'apt-get install ufw' 'apt-get install nmap'
echo -e "${cor[2]} $text Screen"
fun_bar 'apt-get install figlet' 'apt-get install bc'
echo -e "${cor[2]} $text Figlet"
fun_bar 'apt-get install lynx' 'apt-get install curl'
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart > /dev/null 2>&1
echo -e "${cor[1]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
}
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
DIRE="ThonyDroidYT/TD-Gen"
valid_fun () {
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
mkdir /etc/adm-lite
cd /etc/adm-lite
echo "cd /etc/adm-lite && bash ./menu" > /bin/menu
echo "cd /etc/adm-lite && bash ./menu" > /bin/adm
echo "cd /etc/adm-lite && bash ./menu" > /bin/cgh
chmod +x /bin/menu
chmod +x /bin/adm
chmod +x /bin/cgh
cd /etc/adm-lite
touch /etc/adm-lite/index.html
wget -i $HOME/lista -o /dev/null
echo -e "${cor[3]} $(source trans -b pt:${id} "AGREGANDO PAQUETES, y SERVICIOS NECESARIOS")"
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
cd /etc/adm-lite
chmod +x ./*
instalar_fun
function_verify
[[ -e $HOME/lista ]] && rm $HOME/lista
echo -e "${cor[1]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -e "${cor[3]} $(source trans -b pt:${id} "Perfeito Procedimento Feito com Sucesso!")"
echo -e "${cor[1]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -e "${cor[3]} |∆| ${cor[2]}$(source trans -b pt:${id} "Agora E So Voce Configurar Sua VPS com o Menu Instalacao")"
echo -e "${cor[1]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -e "${cor[2]} $(source trans -b pt:${id} "Use os Comandos"): menu, adm"
echo -e "${cor[2]} $(source trans -b pt:${id} "e acesse o script, um bom uso!")"
echo -e "${cor[1]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -ne " \033[0m"
echo " Verified【 匚卄ㄩ爪ㄖᎶ卄 】 ADM 2021" > /bin/ejecutar/key.fix
echo " Verified【 匚卄ㄩ爪ㄖᎶ卄 】 ADM 2021" > $HOME/exito
install_fim
}

SUBDIRE="ChumoGH/Script"
error_fun () {
echo -e "${cor[5]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -e "\033[1;31mYour apt-get Error!"
echo -e "Reboot the System!"
echo -e "Use Command:"
echo -e "\033[1;36mdpkg --configure -a"
echo -e "\033[1;31mVerify your Source.list"
echo -e "For Update Source list use this comand"
echo -e "\033[1;36mwget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/PROYECTOS_DESCONTINUADOS/master/ADM-MANAGER-MOD/Install/apt-source.sh && chmod 777 ./* && ./apt-*"
echo -e "${cor[5]}=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠=≠"
echo -ne "\033[0m"
exit 1
}

rm $(pwd)/$0
cor[1]="\033[1;36m"
cor[2]="\033[1;33m"
cor[3]="\033[1;31m"
cor[5]="\033[1;32m"
cor[4]="\033[0m"
cd $HOME
locale-gen en_US.UTF-8 > /dev/null 2>&1
update-locale LANG=en_US.UTF-8 > /dev/null 2>&1
apt-get install gawk -y > /dev/null 2>&1
wget -O trans https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/PROYECTOS_DESCONTINUADOS/master/ADM-MANAGER-MOD/Install/trans -o /dev/null 2>&1
mv -f ./trans /bin/ && chmod 777 /bin/*
cowsay -f stegosaurus "BIENVENIDO Y GRACIAS POR UTILIZAR - - - - - - - -【 ★ ChumoGH ★ 】 ADM 2021 "| lolcat
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\033[1;32m ◈ ━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━ ◈"
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
   wget -O lista $DOMI/$DIRE/$SUBDIRE/lista -o /dev/null
valid_fun
