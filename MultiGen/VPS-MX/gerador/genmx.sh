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
-bar2)cor="\e[0;31m========================================\e[0m" && echo -e "${cor}${SEMCOR}";;
-bar)cor="\e[1;31m——————————————————————————————————————————————————————" && echo -e "${cor}${SEMCOR}";;
esac
}
fun_alex (){
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
update(){
msg -bar
msg -verm " INSTALANDO ACTUALIZACION --UPDATE"
msg -bar
apt-get update -y &>/dev/null
apt-get upgrade -y &>/dev/null
echo -e " ACTUALIZADA"
clear
}
instal(){
apt-get install lsof >/dev/null 2>&1
apt-get install sudo >/dev/null 2>&1
apt-get install screen -y >/dev/null 2>&1
apt-get install bc -y >/dev/null 2>&1
apt-get install netcat -y >/dev/null 2>&1
apt-get install apache2 -y &>/dev/null
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart > /dev/null 2>&1 &
}
tm="mkdir /tmp/genmx"
dirx="/tmp/genmx"
borrar="rm -rf /tpm/genmx"
ivar="/etc/http-instas" #almacenamiento de keys
ivar2="/etc/key-gerador" #key instaladas
dir4="/etc/SCRIPT" #la mas usada--- default
dirc="/etc/casitadlt" #by casita dlt
[[ ! -d ${ivar} ]] && touch ${ivar}
http=https://raw.githubusercontent.com/scriptsmx/script/master/Install/httpserver.sh
genkalix(){
rm -rf ${dirc}
[[ ! -d ${dirc} ]] && mkdir ${dirc}
${tm} &>/dev/null
msg -bar
update
fun_alex 'instal'
link=https://raw.githubusercontent.com/casitadelterror/scripts/master/REPOSITORY
_repomx=("ADMbot.sh" "C-SSR.sh" "Crear-Demo.sh" "PDirect.py" "PGet.py" "POpen.py" "PPriv.py" "PPub.py" "Shadowsocks-R.sh" "Shadowsocks-libev.sh" "Unlock-Pass-VULTR.sh" "apacheon.sh" "blockBT.sh" "budp.sh" "dns-netflix.sh" "dropbear.sh" "fai2ban.sh" "gestor.sh" "menu" "message.txt" "openvpn.sh" "paysnd.sh" "ports.sh" "shadowsocks.sh" "sockspy.sh" "speed.sh" "speedtest.py" "squid.sh" "squidpass.sh" "ssl.sh" "tcp.sh" "ultrahost" "usercodes" "utils.sh" "v2ray.sh")
for _archi in ${_repomx[@]}; do
[[ -e ${dirx}/$_archi ]] && rm ${dirx}/$_archi >/dev/null 2>&1
wget -c -P ${dirx} $link/$_archi &>/dev/null
chmod +x ${dirx}/$_archi &>/dev/null
cp ${dirx}/* ${dirc}
chmod +x ${dirc}/*
rm -rf ${dirx}
${borrar} &>/dev/null
done
wget -O /bin/http-server.sh $http &>/dev/null
chmod +x /bin/http-server.sh
clear
msg -bar
echo -e "\e[1;33m INSTALACION COMPLETA--\n DIGITE EL COMANDO [ genx]"
msg -bar
rm -rf .bash_history
exit 0
}
genkalixofc(){
rm -rf ${dir4}
[[ ! -d ${dir4} ]] && mkdir ${dir4}
${tm} &>/dev/null
msg -bar
update
fun_alex 'instal'
linkofc=https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/SCRIPT
_repomxx=("ADMbot.sh" "C-SSR.sh" "Crear-Demo.sh" "PDirect.py" "PGet.py" "POpen.py" "PPriv.py" "PPub.py" "Shadowsocks-R.sh" "Shadowsocks-libev.sh" "Unlock-Pass-VULTR.sh" "apacheon.sh" "blockBT.sh" "budp.sh" "dns-netflix.sh" "dropbear.sh" "fai2ban.sh" "gestor.sh" "menu" "message.txt" "openvpn.sh" "paysnd.sh" "ports.sh" "shadowsocks.sh" "sockspy.sh" "speed.sh" "speedtest.py" "squid.sh" "squidpass.sh" "ssl.sh" "tcp.sh" "ultrahost" "usercodes" "utils.sh" "v2ray.sh")
for _archix in ${_repomxx[@]}; do
[[ -e ${dirx}/$_archix ]] && rm ${dirx}/$_archix >/dev/null 2>&1
wget -c -P ${dirx} $linkofc/$_archix &>/dev/null
chmod +x ${dirx}/$_archix &>/dev/null
cp ${dirx}/* ${dir4}
chmod +x ${dir4}/*
rm -rf ${dirx}
${borrar} &>/dev/null
done
wget -O /bin/http-server.sh $http &>/dev/null
chmod +x /bin/http-server.sh
clear
msg -bar
rm -rf .bash_history
read -p " enter para seguir"
kalixofc
}
BASICINSTA="ADMbot.sh C-SSR.sh Crear-Demo.sh PDirect.py PGet.py POpen.py PPriv.py PPub.py Shadowsocks-R.sh Shadowsocks-libev.sh Unlock-Pass-VULTR.sh apacheon.sh blockBT.sh budp.sh dns-netflix.sh dropbear.sh fai2ban.sh gestor.sh menu message.txt openvpn.sh paysnd.sh ports.sh shadowsocks.sh sockspy.sh speed.sh speedtest.py squid.sh squidpass.sh ssl.sh tcp.sh ultrahost usercodes utils.sh v2ray.sh"
log="/etc/gerar-sh-log"
insta="\E[1;31mINSTALACIONES :\033[0m"
genx="\e[1;37mGENERADOR DE KEYS \E[1;31m[ \E[1;33m{ VPS-MX } \E[1;31m]\033[0m"
menuofc () {
SCPT_DIRX="/etc/SCRIPT"
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -e ${SCPT_DIRX}/message.txt ]] && credix="$(cat ${SCPT_DIRX}/message.txt)" || credix="Activar-Opcion-2"
crex="\E[1;31m[\E[1;32m $credix \E[1;31m]\033[0m"
DIR="/etc/http-shell"
LISTA="yekcfO"
echo -e "\e[97m\033[1;41m        =====>>►►   GEN VPS•MX   ◄◄<<=====         \033[0m"
echo -e "$BARRA"
echo -e "           $genx                   "
echo -e "           CREDITOS: $crex                  "
echo -e "$BARRA"
echo -e "           $insta\033[1;33m  $KEYS\033[0m"
echo -e "$BARRA"
echo -e "\e[1;37m=> @conectedmx_vip -- @conectedmx"
}
BASICINST="ADMbot.sh C-SSR.sh Crear-Demo.sh PDirect.py PGet.py POpen.py PPriv.py PPub.py Shadowsocks-R.sh Shadowsocks-libev.sh Unlock-Pass-VULTR.sh apacheon.sh blockBT.sh budp.sh dns-netflix.sh dropbear.sh fai2ban.sh gestor.sh menu message.txt openvpn.sh paysnd.sh ports.sh shadowsocks.sh sockspy.sh speed.sh speedtest.py squid.sh squidpass.sh ssl.sh tcp.sh ultrahost usercodes utils.sh v2ray.sh"
IVAR="/etc/http-instas"
[[ -e $IVAR ]] && KEYS=$(cat $IVAR) || KEYS="00"
IVAR2="/etc/key-gerador"
log="/etc/gerar-sh-log"
insta="\E[1;31mINSTALACIONES :\033[0m"
gen="\e[1;37mGENERADOR DE KEYS \E[1;31m[ \E[1;33m{ VPS-MX } \E[1;31m]\033[0m"
BARRA="\e[1;31m——————————————————————————————————————————————————————\e[0m"
menu0 () {
SCPT_DIR="/etc/casitadlt"
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -e ${SCPT_DIR}/message.txt ]] && credi="$(cat ${SCPT_DIR}/message.txt)" || credi="Activar-Opcion-12"
cre="\E[1;31m[\E[1;32m $credi \E[1;31m]\033[0m"
DIR="/etc/http-shell"
LIST="tkenoC"
echo -e "\e[97m\033[1;41m        =====>>►►   GEN VPS•MX   ◄◄<<=====         \033[0m"
echo -e "$BARRA"
echo -e "           $gen                   "
echo -e "           CREDITOS: $cre                  "
echo -e "$BARRA"
echo -e "           $insta\033[1;33m  $KEYS\033[0m"
echo -e "$BARRA"
echo -e "\e[1;37m  => @conectedmx_vip -- @conectedmx"
echo -e "	\e[41mModified By @alexmod80\e[0m"
}
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
meu_ip
fun_list () {
unset KEY
KEY="$1"
[[ ! -e ${DIR} ]] && mkdir ${DIR}
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
i=0
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $BASICINST|grep -w "${arqx}") ]] && continue
arq_list[$i]="${arqx}"
let i++
done
echo -e "🛑KEYS VPS-MX🛑  "
echo -e "[b] -> \033[31mNSTALACION VPS-MX  \033[0m"
read -p "ELEJIR LA OPCION ( b ): " -e -i b readvalue
[[ -z $readvalue ]] && readvalue="b"
read -p "NOMBRE DE USUARIO: " nombrevalue
[[ -z $nombrechoue ]] && nombrevalue="unnamed"
read -p "KEY FIJA? [S/N]: " -e -i n fixakey
[[ $fixakey = @(s|S|y|Y) ]] && read -p "IP-FIJA: " IPFIX && nombrevalue+=[FIXA]
if [[ $readvalue = @(b|B) ]]; then
arqslist="$BASICINST"
for arqx in `echo "${arqslist}"`; do
[[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
echo "$arqx" >> ${DIR}/${KEY}/${LIST}
done
elif [[ $readvalue = @(x|X) ]]; then
for arqx in `echo "${arq_list[@]}"`; do
[[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
echo "$arqx" >> ${DIR}/${KEY}/${LIST}
done
echo "TRUE" >> ${DIR}/${KEY}/HERRAMIENTA
else
for arqx in `echo "${readvalue}"`; do
[[ -e ${DIR}/${KEY}/${arq_list[$arqx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/${arq_list[$arqx]} ${DIR}/${KEY}/
echo "${arq_list[$arqx]}" >> ${DIR}/${KEY}/${LIST}
done
echo "TRUE" >> ${DIR}/${KEY}/HERRAMIENTA
fi
echo "$nombrechoue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "$BARRA"
echo -e "KEY ACTIVA, Y ESPERANDO INSTALACION!"
echo -e "$BARRA"
}
fun_lista () {
unset KEY
KEY="$1"
[[ ! -e ${DIR} ]] && mkdir ${DIR}
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
i=0
for arqxx in `ls ${SCPT_DIRX}`; do
[[ $(echo $BASICINSTA|grep -w "${arqxx}") ]] && continue
arq_lista[$i]="${arqxx}"
let i++
done
echo -e "🛑KEYS VPS-MX🛑  "
echo -e "[b] -> \033[31mNSTALACION VPS-MX  \033[0m"
read -p "ELEJIR LA OPCION ( b ): " -e -i b readvalue
[[ -z $readvalue ]] && readvalue="b"
read -p "NOMBRE DE USUARIO: " nombrevalue
[[ -z $nombrechoue ]] && nombrevalue="unnamed"
read -p "KEY FIJA? [S/N]: " -e -i n fixakey
[[ $fixakey = @(s|S|y|Y) ]] && read -p "IP-FIJA: " IPFIX && nombrevalue+=[FIXA]
if [[ $readvalue = @(b|B) ]]; then
arqslistx="$BASICINSTA"
for arqxx in `echo "${arqslistx}"`; do
[[ -e ${DIR}/${KEY}/$arqxx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIRX}/$arqxx ${DIR}/${KEY}/
echo "$arqxx" >> ${DIR}/${KEY}/${LISTA}
done
elif [[ $readvalue = @(x|X) ]]; then
for arqxx in `echo "${arq_lista[@]}"`; do
[[ -e ${DIR}/${KEY}/$arqxx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIRX}/$arqxx ${DIR}/${KEY}/
echo "$arqxx" >> ${DIR}/${KEY}/${LISTA}
done
echo "TRUE" >> ${DIR}/${KEY}/HERRAMIENTA
else
for arqxx in `echo "${readvalue}"`; do
[[ -e ${DIR}/${KEY}/${arq_lista[$arqxx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIRX}/${arq_lista[$arqxx]} ${DIR}/${KEY}/
echo "${arq_lista[$arqxx]}" >> ${DIR}/${KEY}/${LISTA}
done
echo "TRUE" >> ${DIR}/${KEY}/HERRAMIENTA
fi
echo "$nombrechoue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "$BARRA"
echo -e "KEY ACTIVA, Y ESPERANDO INSTALACION!"
echo -e "$BARRA"
}
ofus () {
unset server
server=$(echo ${txt_ofuscatw}|cut -d':' -f1)
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
"4")txt[$i]="%";;
"%")txt[$i]="4";;
"-")txt[$i]="K";;
"K")txt[$i]="-";;
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
echo -e "KEY:   $keyfinal"
echo -e "$BARRA"
echo -e "SCRIPT ADM-MX : apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/casitadelterror/rex/master/instalador/instalscript.sh &> /dev/null; chmod 777 instalscript.sh* && ./instalscript.sh*"
echo -e "$BARRA"
}
gerar_keyofc () {
valuekeyx="$(date | md5sum | head -c10)"
valuekeyx+="$(echo $(($RANDOM*10))|head -c 5)"
fun_lista "$valuekeyx"
keyfinalx=$(ofus "$IP:8888/$valuekeyx/$LISTA")
echo -e "KEY:   $keyfinalx"
echo -e "$BARRA"
echo -e "SCRIPT ADM-MX : apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/casitadelterror/rex/master/instalador/instalscript; chmod 777 instalscript; ./instalscript"
echo -e "$BARRA"
}
actualizagen_key () {
i=0
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Retornar"
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
read -p "Escoja cual Actualizar[t=todos]: " -e -i 0 value
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
echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ACTUALIZADA!)\033[0m"
fi
let i++
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo -e "$BARRA"
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
echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ACTUALIZADA!)\033[0m"
read -p "Enter"
rm ${SCPT_DIR}/*.x.c &> /dev/null
}
}
remover_key () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] VOLVER"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ ! -e ${DIR}/${arqs}/used.date ]]; then
echo -e "\033[1;32m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m (VÁLIDA)\033[0m"
else
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m ($(cat ${DIR}/${arqs}/used.date) IP: $(cat ${DIR}/${arqs}/used))\033[0m"
fi
keys="$keys $arqs"
let i++
done
keys=($keys)
echo -e "$BARRA"
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Elija cual eliminar: " -e -i 0 value
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
rm -rf ${DIR}/${arqs}* && rm -rf ${DIR}/${arqs}
echo -e "\033[1;31m[KEY]: $arqsx \033[1;32m(ELIMINADO!)\033[0m"
else
echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(AUN ES VALIDA!)\033[0m"
fi
else
echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(AUN ES VALIDA!)\033[0m"
fi
let i++
done
echo -e "$BARRA"
read -p "Enter"
}
actualizar_keyfixa () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
if [[ $(cat ${DIR}/${arqs}.name|grep FIXA) ]]; then #Keyfixa Atualiza
for arqx in `echo "${BASICINST}"`; do
cp ${SCPT_DIR}/$arqx ${DIR}/${arqs}/$arqx
done
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ACTUALIZADA!)\033[0m"
fi
let i++
done
echo -e "$BARRA"
read -p "Enter"
}
start_gen () {
unset PIDGEN
PIDGEN=$(ps aux|grep -v grep|grep "http-server.sh")
if [[ ! $PIDGEN ]]; then
screen -dmS generador /bin/http-server.sh -start
echo -e "\e[33m GENERADOR ACTIVADO"
else
killall http-server.sh
echo -e "\e[31m GENERADOR DESACTIVADO"
fi
}
message_gen () {
read -p "NUEVO MENSAJE: " MSGNEW
echo "$MSGNEW" > ${SCPT_DIR}/message.txt
echo -e "$BARRA"
}
loge(){
[[ -e $log ]] && echo -e "\e[33m$(cat $log)"
}
atualizar_geb () {
wget -O /bin/genx https://raw.githubusercontent.com/casitadelterror/genx/master/mx/generadormx.sh &>/dev/null && chmod +x /bin/genx
msg -bar
msg -verm "  KEYGEN ACTUALIZADA"
msg -bar
sleep 2.s
genx
}
desinstalador () {
killall http-server.sh
rm -rf /bin/http-server.sh
rm -rf /etc/casitadlt
rm -rf /usr/bin/keygen
rm -rf /usr/bin/gerar
rm -rf /usr/bin/gerar.sh
rm -rf /etc/http-instas
rm -rf /bin/genx
rm -rf ${DIR}
rm -rf ${IVAR2}
}
message_genx () {
read -p "NUEVO MENSAJE: " MSGNE
echo "$MSGNE" > ${SCPT_DIRX}/message.txt
echo -e "$BARRA"
}
kalixofc(){
clear
menuofc
msg -bar
msg -verm "           GENERA KEY OFICIAL VPS-MX"
msg -bar
echo -e "\e[1;37m [ 1 [ \e[1;36mGENERAR UNA KEY OFC"
echo -e "\e[1;37m [ 2 ] \e[1;31mACTIVAR GEN OFC (recomendado iniciarlo)"
echo -e "\e[1;37m [ 3 ] \e[1;36mCAMBIAR CRÉDITOS | RESELLER \e[1;31m(recomendado)"
echo -e "\e[1;37m [ 4 ] SALIR"
echo -e "\e[1;37m [ 0 ] VOLVER"
msg -bar
read -p "$(echo -e "\e[1;33m SELECIONE UNA OPCION : ")" alexmod
case $alexmod in
1)
gerar_keyofc ;;
2)
genkalixofc ;;
3)
message_genx ;;
4)
exit ;;
0)
return ;;
esac
}
clear
menux(){
clear
menu0
unset PID_GEN
PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
[[ ! $PID_GEN ]] && PID_GEN="\033[1;31m [ ✖ OFF ✖]   " || PID_GEN="\033[1;32m[ EN LINEA ]"
echo -e "$BARRA"
echo -e "\033[1;31m[1] =  \e[1;32mGENERAR 1 KEY ALEATORIA \e[1;31m(CASITA)  \033[0m"
echo -e "\033[1;31m[2] =  \e[1;36mGENERAR 1 KEY OFICIAL  \e[1;31m(OFICIAL) \033[0m"
echo -e "\033[1;31m[3] =  \e[1;31mAPAGAR | VER KEYS  \033[0m"
echo -e "\033[1;31m[4] =  \e[1;31mELIMINAR KEYS USADAS  \033[0m"
echo -e "\033[1;31m[5] =  \e[1;37mINICIAR | PARAR KEYGEN $PID_GEN  \033[0m"
echo -e "\033[1;31m[6] =  \e[1;36mVER REGISTRO  \033[0m"
echo -e "\033[1;31m[7] =  \e[1;37mCAMBIAR CRÉDITOS \e[1;31m(casita) \033[0m"
echo -e "\033[1;31m[8] =  \e[1;32mVERIFICAR PUERTO  \033[0m"
echo -e "\033[1;31m[9] =  \e[1;32mACTUALIZAR KEYS FIJA  \033[0m"
echo -e "\033[1;31m[10] =  \033[1;31mDESINSTALAR GENERADOR\e[0m"
echo -e "\033[1;31m[11] =  \e[1;32mACTUALIZAR GENERADOR  \033[0m"
echo -e "\033[1;31m[12] =  \e[1;32mINICIAR INSTALACION | \e[1;31m( casita-iniciar)  \033[0m"
echo -e "\033[1;31m[0] =  SALIR "
echo -e "$BARRA"
read -p "$(echo -e "\e[33m   SELECIONE UNA OPCIÓN\e[1;31m ❬❬❬\e[1;37m:\e[1;33m") " selection
case $selection in
1)
gerar_key ;;
2)
kalixofc ;;
3)
remover_key ;;
4)
remover_key_usada ;;
5)
start_gen ;;
6)
remov_gen ;;
7)
message_gen ;;
8)
/etc/casitadlt/ports.sh ;;
9)
actualizar_keyfixa ;;
10)
read -p "desea desinstalar el generador [ s | n ]: " -e -i s desinstalador
[[ "$desinstalador" = "s" || "$desinstalador" = "S" ]] && desinstalador
;;
11)
atualizar_geb ;;
12)
genkalix ;;
0)
exit ;;
esac
msg -ne " enter para finalizar" && read enter
genx
}
menux
