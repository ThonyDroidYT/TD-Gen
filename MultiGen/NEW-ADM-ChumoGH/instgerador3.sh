#!/bin/bash
IVAR="/etc/http-instas"
SCPT_DIR="/etc/SCRIPT"
IVAR2="/etc/key-gerador"
SUB_DOM='base64 -d'
rm $(pwd)/$0
Domi="https://www.dropbox.com"
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
Dire="s"
veryfy_fun () {
[[ ! -d ${IVAR} ]] && touch ${IVAR}
[[ ! -d ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
unset ARQ
case $1 in
"gerar.sh")ARQ="/usr/bin/";;
"http-server.py")ARQ="/bin/";;
*)ARQ="${SCPT_DIR}/";;
esac
mv -f $HOME/$1 ${ARQ}/$1
chmod +x ${ARQ}/$1
}
Subdire="p5v2hevrfj3pdxb"
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
echo "$IP" > /usr/bin/vendor_code
}
meu_ip
apt-get install figlet -y &>/dev/null
apt-get install lolcat -y &>/dev/null
sudo apt autoremove -y &>/dev/null
clear
echo -e "\033[1;33mInstalando Arquivos... "
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
rm -rf ${SCPT_DIR}/* &>/dev/null
[[ ! -d ${IVAR} ]] && touch ${IVAR}
[[ ! -d ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
cd /etc/SCRIPT/
wget -O lista-arq $Domi/$Dire/$Subdire/lista &>/dev/null
sleep 1s
#[[ -e $HOME/lista-arq ]] && {
#for arqx in `cat $HOME/lista-arq`; do
#echo -ne "\033[1;33mBaixando Arquivo \033[1;31m[$arqx] "
#wget -O $HOME/$arqx ${REQUEST}/${arqx} > /dev/null 2>&1 && {
#echo -e "\033[1;31m- \033[1;32mRecebido Com Sucesso!"
#[[ -e $HOME/$arqx ]] && veryfy_fun $arqx
#} || echo -e "\033[1;31m- \033[1;31mFalha (nao recebido!)"
#done
#[[ -e $HOME/lista-arq ]] && {
#for arqx in `cat $HOME/lista-arq`; do
echo -e "\033[1;33mDescargando Archivos \033[0m"
#wget -O $HOME/$arqx ${REQUEST}/${arqx} > /dev/null 2>&1 && {
#cd ${SCP_DIR}
#NUEVO
cd /etc/SCRIPT/
wget -i lista-arq -o /dev/null
clear
#wget -i lista-arq #&>/dev/null
[[ -e ${SCPT_DIR}/gerar.sh ]] && mv -f ${SCPT_DIR}/gerar.sh /usr/bin/gerar.sh
[[ -e ${SCP_DIR}/http-server.py ]] && mv -f ${SCP_DIR}/http-server.py /bin/http-server.py
[[ -e ${SCP_DIR}/lista-arq ]] && rm ${SCP_DIR}/lista-arq
chmod 777 /usr/bin/gerar.sh &>/dev/null
chmod 777 /bin/http-server.py &>/dev/null
chmod 777 /etc/SCRIPT/* &>/dev/null
echo -e "\033[1;36mArchivos \033[1;31m- \033[1;32mRecebido Con Éxito! \033[0m"
#[[ -e $HOME/$arqx ]] && veryfy_fun $arqx
#} || echo -e "\033[1;31m- \033[1;31mFalla (no recebido!)"
#done
[[ ! -e /usr/bin/trans ]] && wget -O /usr/bin/trans https://git.io/trans &> /dev/null
[[ -e /bin/http-server.py ]] && mv -f /bin/http-server.py /bin/http-server.sh && chmod +x /bin/http-server.sh
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || apt-get install bc -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || apt-get install screen -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "netcat"|head -1) ]] || apt-get install netcat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || apt-get install apache2 -y &>/dev/null
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart > /dev/null 2>&1 &
echo "$Key" > $IVAR2
[[ -e ${SCPT_DIR}/lista-arq ]] && rm ${SCPT_DIR}/lista-arq
#rm -rf /etc/SCRIPT/*.1 &>/dev/null
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
echo "/usr/bin/gerar.sh" > /usr/bin/gerar && chmod +x /usr/bin/gerar
echo -e "\033[1;33m Perfeito, Use o Comando \033[1;31mgerar.sh o gerar \033[1;33mpara Gerenciar as Suas Keys e
 Atualizar a Base do servidor"
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m" || {
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
echo -e "\033[1;33mKey Invalida!"
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
}
echo -ne "\033[0m"
echo "qra-atsilK@@57?87@d0?%?47K8888:0@?+%?+6@@+05" > /etc/key-gerador
apt-get install netcat -y &>/dev/null
