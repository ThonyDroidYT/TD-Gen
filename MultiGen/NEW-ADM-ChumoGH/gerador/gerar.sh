#!/bin/bash
clear
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="ferramentas limitera menu_inst painel.zip PPub.py speedtest.py usercodes bot_codes ferramentascodes limiterb menu-txt payloads ssl user-txt cabecalho ferramentas-txt limiter.sh paysnd.sh trans verifica confdropbear get PDirect.py ultimatebot v-local.log dados.zip idioma_geral MasterBin.sh PGet.py pwd.pwd ultrahost idioma_menuinst menu optimizador POpen.py shadowsocks.sh updateadm fai2ban insta_painel menu_credito overtcp PPriv.py ShellBot.sh user"
IVAR="/etc/http-instas"
BARRA="\033[1;31m•••••••••••••••••••••••••••••••••••••••••••••••••\033[0m"

fun_a(){
texto=`if netstat -tunlp |grep apache2 1> /dev/null 2> /dev/null; then
echo -e "ON"
else
echo -e "OFF"
fi`;
if [[ $texto = "ON" ]];then
echo "Apache2 Instalado y Activo"
#sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
#service apache2 restart > /dev/null 2>&1
else
echo "Apache2 No Instalado"
echo -ne " \033[1;31m[ ! ] INSTALANDO APACHE2 "
apt-get install apache2 -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart > /dev/null 2>&1
fi
}

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
  -bar2)cor="${AZUL}${NEGRITO}•••••••••••••••••••••••••••••••••••••••••••••••••" && echo -e "${cor}${SEMCOR}";;
  -bar)cor="${VERMELHO}${NEGRITO}•••••••••••••••••••••••••••••••••••••••••••••••••" && echo -e "${cor}${SEMCOR}";;
 esac
}

####inicio puertos
ports_ () {
unset porta
porta=`if netstat -tunlp |grep nc.tradit 1> /dev/null 2> /dev/null; then
echo -e "\033[0;36m   Keygen:\033[0;35m 8888"
fi`;
[[ $v1 = $v2 ]] && vesaoSCT="\033[1;32m${txt[315]} \033[0;33m ($v2)" || vesaoSCT="\033[1;31m${txt[316]}\033[0;33m($v2) ► \033[1;32m($v1)\033[1;31m"
echo -e "   ${cor[2]} ${vesaoSCT} ${cor[0]}"
echo -e "   \033[0;31mSystem:\033[0;32m$(cat /etc/issue.net) \033[0;31mIP:\033[0;32m $(wget -qO- ifconfig.me)"
msg -bar
echo -ne "$(msg -verd "        Keys Usadas") $(msg -azu " : ") " && msg -bra "\033[1;41m $(cat $IVAR) $porta"
}

SCPT_DIR="/etc/SCRIPT"
[[ ! -e ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
INSTA_ARQUIVOS="ADMVPS.zip"
DIR="/etc/http-shell"
LIST="lista-arq"
P_SERVER="https://www.dropbox.com/s/blxo0jifysvyrey/"
v1=$(curl -sSL "${P_SERVER}/v-new.log")
v2=$(cat $SCPT_DIR/v-local.log)
txt[315]="💥 ChumoGH Keygen 💥 IS UPDATED!"
txt[316]="⚠️ ChumoGH Keygen ⚠️ NEEDS UPDATE!"
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
mudar_instacao () {
while [[ ${var[$value]} != 0 ]]; do
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="ferramentas limitera menu_inst painel.zip PPub.py speedtest.py usercodes bot_codes ferramentascodes limiterb menu-txt payloads ssl user-txt cabecalho ferramentas-txt limiter.sh paysnd.sh trans verifica confdropbear get PDirect.py ultimatebot v-local.log dados.zip idioma_geral MasterBin.sh PGet.py pwd.pwd ultrahost idioma_menuinst menu optimizador POpen.py shadowsocks.sh updateadm fai2ban insta_painel menu_credito overtcp PPriv.py ShellBot.sh user"
clear
echo -e $BARRA
echo -e "MENU SSELECCIÓN DE INSTALACIÓN"
echo -e $BARRA
echo "[0] - FINALIZAR PROCEDIMIENTO"
i=1
for arqx in `ls ${SCPT_DIR}`; do
[[ $arqx = @(gerar.sh|http-server.py) ]] && continue
[[ $(echo $BASICINST|grep -w "$arqx") ]] && echo "[$i] - [X] - $arqx" || echo "[$i] - [ ] - $arqx"
var[$i]="$arqx"
let i++
done
echo -ne "Seleccione un archivo [Adicionar/Eliminar]: "
read value
[[ -z ${var[$value]} ]] && return
if [[ $(echo $BASICINST|grep -w "${var[$value]}") ]]; then
rm /etc/newadm-instalacao
local BASIC=""
  for INSTS in $(echo $BASICINST); do
  [[ $INSTS = "${var[$value]}" ]] && continue
  BASIC+="$INSTS "
  done
echo $BASIC > /etc/newadm-instalacao
else
echo "$BASICINST ${var[$value]}" > /etc/newadm-instalacao
fi
done
}
fun_list () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
#CRIA DIR
[[ ! -e ${DIR} ]] && mkdir ${DIR}
#ENVIA ARQS
i=0
VALUE+="gerar.sh instgerador.sh http-server.py lista $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue 
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
echo -e "[1] -> \033[0;33mINSTALACIÓN ADM-CHUMOGH\033[0m"
read -p "ESCOJE EL ADM : " readvalue
#CRIA KEY
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
#PASSA ARQS
[[ -z $readvalue ]] && readvalue="1"
read -p "Nombre de usuario ( dueño de la key ): " nombrevalue
[[ -z $nombrevalue ]] && nombrevalue="free-key"
echo -e "Deseas colocar una IP Fija" 
while [[ ${yesno} != @(s|S|y|Y|n|N) ]]; do
read -p "[S/N]: " yesno
tput cuu1 && tput dl1
done
if [[ ${yesno} = @(s|S|y|Y) ]]; then
read -p "Ingresa Key FIJA ( IP a USAR ): "  IPFIX
fi
if [[ $readvalue = @(cgh|1) ]]; then
#ADM BASIC
 arqslist="$BASICINST"
 for arqx in `echo "${arqslist}"`; do
 [[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
 cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
 echo "$arqx" >> ${DIR}/${KEY}/${LIST}
 done
else
 for arqx in `echo "${readvalue}"`; do
 #UNE ARQ
 [[ -e ${DIR}/${KEY}/${arq_list[$arqx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
 rm ${SCPT_DIR}/*.x.c &> /dev/null
 cp ${SCPT_DIR}/${arq_list[$arqx]} ${DIR}/${KEY}/
 echo "${arq_list[$arqx]}" >> ${DIR}/${KEY}/${LIST}
 done
echo "TRUE" >> ${DIR}/${KEY}/FERRAMENTA
fi
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrevalue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "$BARRA"
echo -e "Key activa, y esperando instalación!"
echo -e "$BARRA"
}

list_fix () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
#CRIA DIR
[[ ! -e ${DIR} ]] && mkdir ${DIR}
#ENVIA ARQS
i=0
VALUE+="gerar.sh instgerador.sh http-server.py lista $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue 
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
#CRIA KEY
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
#PASSA ARQS
nms+="$(echo $(($RANDOM*-5))|head -c 5)"
[[ -z $readvalue ]] && readvalue="1"
[[ -z $nombrevalue ]] && nombrevalue="$nomkey$nms"
if [[ $readvalue = @(cgh|1) ]]; then
#ADM BASIC
 arqslist="$BASICINST"
 for arqx in `echo "${arqslist}"`; do
 [[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
 cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
 echo "$arqx" >> ${DIR}/${KEY}/${LIST}
 done
else
 for arqx in `echo "${readvalue}"`; do
 #UNE ARQ
 [[ -e ${DIR}/${KEY}/${arq_list[$arqx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
 rm ${SCPT_DIR}/*.x.c &> /dev/null
 cp ${SCPT_DIR}/${arq_list[$arqx]} ${DIR}/${KEY}/
 echo "${arq_list[$arqx]}" >> ${DIR}/${KEY}/${LIST}
 done
echo "TRUE" >> ${DIR}/${KEY}/FERRAMENTA
fi
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrevalue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "-------------------------------------------------"
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
gerar_key () {
valuekey="$(date | md5sum | head -c10)"
valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
fun_list "$valuekey"
keyfinal=$(ofus "$IP:8888/$valuekey/$LIST")
echo -e "Key Generada $(printf '%(%D-%H:%M:%S)T') \n$keyfinal\n"
echo -e "$BARRA"
echo -e "Instalador Oficial"
echo -e "$BARRA"
echo "wget -q https://www.dropbox.com/s/i87udxpj1lj17sa/instala.sh; chmod +x instala.sh;./instala.sh"
echo -e "$BARRA"
read -p "Enter para finalizar"
}
fix_key () {
echo " Bienvenido, Porfavor dijita el Nombre del DUEÑO de la KEYs"
read -p "Nombre del Dueño de las Keys : " nomkey
echo " Bienvenido, Porfavor ingresa el numero de keys a generar"
read -p "Numero de Keys : " numk
echo -e "$BARRA"
echo -e "Keys activas, y esperando instalación!"
for((w=0; w<$numk; w++)); do
valuekey="$(date | md5sum | head -c10)"
valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
list_fix "$valuekey"
keyfinal=$(ofus "$IP:8888/$valuekey/$LIST")
echo -e "Key Activa $(printf '%(%D-%H:%M:%S)T') \n\n$keyfinal"
done
echo -e "$BARRA"
echo -e "Instalador Oficial"
echo -e "$BARRA"
echo "wget -q https://www.dropbox.com/s/i87udxpj1lj17sa/instala.sh; chmod +x instala.sh;./instala.sh"
echo -e "$BARRA"
read -p "Enter para finalizar"
}
att_gen_key () {
i=0
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Volver"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;32m ($(cat ${DIR}/${arqs}/keyfixa))\033[0m"
keys="$keys $arqs"
let i++
fi
done
keys=($keys)
echo -e "$BARRA"
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Escolha qual Atualizar[t=todos]: " -e -i 0 value
done
[[ $value = 0 ]] && return
if [[ $value = @(t|T) ]]; then
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
KEYDIR="$DIR/$arqs"
rm $KEYDIR/*.x.c &> /dev/null
 if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then #Keyen Atualiza
 rm ${KEYDIR}/${LIST}
   for arqx in `ls $SCPT_DIR`; do
    cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
    echo "${arqx}" >> ${KEYDIR}/${LIST}
    rm ${SCPT_DIR}/*.x.c &> /dev/null
    rm $KEYDIR/*.x.c &> /dev/null
   done
 arqsx=$(ofus "$IP:8888/$arqs/$LIST")
 echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
 fi
let i++
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
msg -bar2
echo -ne "\033[0m" && read -p "Enter"
return 0
fi
KEYDIR="$DIR/${keys[$value]}"
[[ -d "$KEYDIR" ]] && {
rm $KEYDIR/*.x.c &> /dev/null
rm ${KEYDIR}/${LIST}
  for arqx in `ls $SCPT_DIR`; do
  cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
  echo "${arqx}" >> ${KEYDIR}/${LIST}
  rm ${SCPT_DIR}/*.x.c &> /dev/null
  rm $KEYDIR/*.x.c &> /dev/null
  done
 arqsx=$(ofus "$IP:8888/${keys[$value]}/$LIST")
 echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
 read -p "Enter"
 rm ${SCPT_DIR}/*.x.c &> /dev/null
 }
}
remover_key () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Volver"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ ! -e ${DIR}/${arqs}/used.date ]]; then
echo -e "\033[1;32m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m (Key Activa)\033[0m"
else
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m ($(cat ${DIR}/${arqs}/used.date) IP: $(cat ${DIR}/${arqs}/used))\033[0m"
fi
keys="$keys $arqs"
let i++
done
keys=($keys)
echo -e "$BARRA"
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Elija cual remover: " -e -i 0 value
done
[[ -d "$DIR/${keys[$value]}" ]] && rm -rf $DIR/${keys[$value]}* || return
}
remover_key_usada () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
 if [[ -e ${DIR}/${arqs}/used.date ]]; then #KEY USADA
  if [[ $(ls -l -c ${DIR}/${arqs}/used.date|cut -d' ' -f7) != $(date|cut -d' ' -f3) ]]; then
  rm -rf ${DIR}/${arqs}*
  echo -e "\033[1;31m[KEY]: $arqsx \033[1;32m(Eliminada!)\033[0m" 
  else
  echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(Key Activa!)\033[0m"
  fi
 else
 echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(Key Activa!)\033[0m"
 fi
let i++
done
msg -bar2
echo -ne "\033[0m" && read -p "Enter"
}
start_gen () {
PIDGEN=$(ps x|grep -v grep|grep "http-server.sh")
if [[ ! $PIDGEN ]]; then
screen -dmS generador /bin/http-server.sh -start
# screen -dmS generador /bin/http-server-pass.sh -start
else
killall http-server.sh

fi
}
message_gen () {
read -p "Ingresa el Mensaje: " MSGNEW
echo "$MSGNEW" > ${SCPT_DIR}/message.txt
echo -e "$BARRA"
}
act_gen () {
wget -q -O /tmp/actc.sh https://www.dropbox.com/s/2t3j16wa67v92lt/insta.sh
chmod +x /tmp/actc.sh
bash /tmp/actc.sh
#source <(curl -sL https://raw.githubusercontent.com/ChumoGH/ChumoGH-Script/master/Key-gerar/insta.sh)
}
rmv_iplib () {
echo -e "SERVIDORES DE KEY ATIVOS!"
rm /var/www/html/newlib && touch /var/www/html/newlib
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
var=$(cat ${DIR}/${arqs}.name)
ip=$(cat ${DIR}/${arqs}/keyfixa)
echo -ne "\033[1;31m[USUARIO]:(\033[1;32m${var%%[*}\033[1;31m) \033[1;33m[GERADOR]:\033[1;32m ($ip)\033[0m"
echo "$ip" >> /var/www/html/newlib && echo -e " \033[1;36m[ATUALIZADO]"
fi
done
echo "51.222.29.216" >> /var/www/html/newlib
echo -e "$BARRA"
read -p "Enter"
}

fum_ver () {
while [[ ! $Keey ]]; do
clear
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\033[1;32m DIGITA TU KEY A VERIFICAR "
msg -ne "Script Key: " && read Keey
tput cuu1 && tput dl1
done
msg -ne "Key: $(ofus $Keey)"
curl $(ofus $Keey) > /dev/null 2>&1 && echo -e "\033[1;32m [ KEY VALIDA ]" || echo -e "\033[1;31m [ KEY INVALIDA]"
read -p "Enter"
}

meu_ip
menau () {
clear
unset PID_GEN
PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
echo -e "$BARRA"  #echo -e '\033[0;33mXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n\033[0;33mXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n\033[0;34mXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n\033[0;31mXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
figlet -f future "   ADM-ChumoGH" | lolcat
[[ ! $PID_GEN ]] && PID_GEN="\033[0;35m[\033[0;31mAPAGADO\033[0;35m]" || PID_GEN="\033[0;35m[\033[0;36mENCENDIDO\033[0;35m]"
ports_
echo ""
msg -bar
cd ${SCPT_DIR}
echo -e "\033[0;35m |\033[0;32m $(find . -type f | wc -l) \033[0;35m|\033[0;33m Ficheros\033[0;32m >\033[1;31m ${SCPT_DIR} \033[0;34mcon\033[0;35m |\033[0;32m$(ls /etc/http-shell/ | grep name | wc -l)\033[0;35m|\033[0;33m\033[0;33m KEYs" 
cd $HOME
msg -bar
echo -e "\033[0;35m[\033[0;36m1\033[0;35m] \033[0;34m<\033[0;33m GENERAR 1 KEY ALEATORIA"
echo -e "\033[0;35m[\033[0;36m2\033[0;35m] \033[0;34m<\033[0;33m APAGAR/VER KEYS"
echo -e "\033[0;35m[\033[0;36m3\033[0;35m] \033[0;34m<\033[0;33m LIMPIAR KEYS USADAS"
echo -e "\033[0;35m[\033[0;36m4\033[0;35m] \033[0;34m<\033[0;34m Generar Keys ALEATORIAS"
echo -e "\033[0;35m[\033[0;36m5\033[0;35m] \033[0;34m<\033[0;33m INICIAR/PARAR KEYGEN $PID_GEN\033[0m"
echo -e "\033[0;35m[\033[0;36m6\033[0;35m] \033[0;34m<\033[0;33m REGISTRO DE KEYS"
echo -e "\033[0;35m[\033[0;36m7\033[0;35m] \033[0;34m<\033[0;33m Checar KEY ACTIVADA"
echo -e "\033[0;35m[\033[0;36m8\033[0;35m] \033[0;34m<\033[0;33m ACTUALIZAR GENERADOR"
echo -e "\033[0;35m[\033[0;36m9\033[0;35m] \033[0;34m<\033[0;33m FIJAR Key"
echo -e "\033[0;35m[\033[0;36m0\033[0;35m] \033[0;34m<\033[0;33m SALIR"
echo -e "$BARRA"

}
while [[ ${varread} != @([0-9]) ]]; do
menau
read -p "ESCOJE: " varread
done
echo -e "$BARRA"
if [[ ${varread} = 0 ]]; then
exit
elif [[ ${varread} = 1 ]]; then
gerar_key
elif [[ ${varread} = 2 ]]; then
remover_key
elif [[ ${varread} = 3 ]]; then
remover_key_usada
elif [[ ${varread} = 4 ]]; then
fix_key
#mudar_instacao
elif [[ ${varread} = 5 ]]; then
start_gen
elif [[ ${varread} = 6 ]]; then
echo -ne "\033[1;36m"
echo -e "$(cat /etc/gerar-sh-log)" 2>/dev/null || echo "NINGUN LOG DE MOMENTO"
echo -ne "\033[0m" && read -p "Enter"
elif [[ ${varread} = 7 ]]; then
fum_ver
elif [[ ${varread} = 8 ]]; then
act_gen
elif [[ ${varread} = 9 ]]; then
att_gen_key
fi
gerar
