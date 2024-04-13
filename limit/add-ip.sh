#!/bin/bash
BG_BLU="\033[44;1m" # BG BIRU
BlueCyan='\e[5;36m'
Xark='\e[0m'
GREN="\033[0;32m"
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/JerrySBG/scvps/main/izin"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m DEBES REGISTRAR PRIMERO PARA USAR EL SCRIPT       \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}REGISTRA LA VPS !${NC}"
    echo -e "   \033[0;33mTU VPS${NC} $ipsaya \033[0;33mHA SIDO BANEADA${NC}"
    echo -e "     \033[0;33mComprar permisos de Acceso para el Scripts${NC}"
    echo -e "             \033[0;33mContacto Admin :${NC}"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/+529241293310"
    echo -e "      ${Lgreen}Telegram${NC} t.me/Jerry_SGB"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
Repo1="https://raw.githubusercontent.com/JerrySBG/scvps/main/"
cd izin
export MYIP=$( curl -sS ipv4.icanhazip.com/ )
SELLER=$(curl -sS ${Repo1}izin | grep $MYIP | awk '{print $2}')
Exp100=$(curl -sS ${Repo1}izin | grep $MYIP | awk '{print $3}')
data_ip="https://raw.githubusercontent.com/JerrySBG/scvps/main/izin"
cd izin
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))

#########################
[[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
# COLOR VALIDATION
clear
RED='\033[0;31m'
BG_BLU="\033[44;1m" # BG BIRU
BlueCyan='\e[5;36m'
Xark='\e[0m'
GREN="\033[0;32m"
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
YELL='\033[1;33m'
BGX="\033[42m"
END='\e[0m'

AKTIF="VERIFICADO"
TOKEN="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"
REPO="https://github.com/JerrySBG/scvps.git"
EMAIL="p.layhackbins@gmail.com"
USER="JerrySBG"


add-ip() {
TIMES="10"
CHATID="833821933"
KEY="5340711015:AAEgC3JCrQZ2fkFqfV40UyqLfyzMmXX9BZI"
URL="https://api.telegram.org/bot$KEY/sendMessage"


    today=`date -d "0 Dias" +"%Y-%m-%d"`
    git clone ${REPO} /scvps &> /dev/null
    clear
    cd /scvps
    clear
    echo -e ""
    echo -e ""
    read -p "  Ingresa la Nueva IP VPS : " ip
    CLIENT_EXISTS=$(grep -w $ip /izin | wc -l)
    if [[ ${CLIENT_EXISTS} == '1' ]]; then
    echo "IP Ya Existe Actualmente !"
    exit 0
    fi
    echo -e ""
   # read -p "  Input Username IP (Example : Lt) : " name
    name=H6EFctYeZ3DqOWSaiXjtT1u8`</dev/urandom tr -dc A-Z0-9 | head -c4`
    echo -e ""
    clear
    echo -e ""
    echo -e ""
    echo "  ¿Cuántos Días Quieres? ?"
    echo "  [1] 30 Dias"
    echo "  [2] 60 Dias"
    echo "  [3] 90 Dias"
    echo "  [4] Permanente"
    echo "  [5] Fecha de vencimiento personalizada"
    echo -e ""
    read -p "  Ingresa Numero del Menu : " exp

    if [[ ${exp} == '1' ]]; then
    exp2=`date -d "30 Dias" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> izin
    elif [[ ${exp} == '2' ]]; then
    exp2=`date -d "60 Dias" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> izin
    elif [[ ${exp} == '3' ]]; then
    exp2=`date -d "90 Dias" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> izin
    elif [[ ${exp} == '4' ]]; then
    exp2="Permamente"
    echo "### ${name} ${exp2} ${ip}" >> izin
    elif [[ ${exp} == '5' ]]; then
    read -p "Ingresa los Días a Expirar : " exp11
    exp2=`date -d "$exp11 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> izin
    fi
    cd /scvps
    #git config --global user.email "${EMAIL}" &> /dev/null
    #git config --global user.name "${USER}" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m 1.0 &> /dev/null
    #git branch -M main &> /dev/null
    git remote add origin https://github.com/JerrySBG/scvps.git &> /dev/null
    git push -f origin main &> /dev/null
    cd izin
    rm -rf /scvps
    clear
    sleep 1
    echo "  Registro de dirección IP..."
    sleep 1
    echo "  Procesando..."
    sleep 1
    echo "  Listo!"
    sleep 1
    clear
TEXT="
<code>───────────────────────────</code>
<b>    VPS IP REGISTRADA CON EXITO </b>
<code>───────────────────────────</code>
<code>USUARIO        : $name</code>
<code>Direccion IP   : $ip</code>
<code>Registrado     : $today</code>
<code>Expiración     : $exp2</code>
<code>───────────────────────────</code>
"
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"
    echo -e "               \e[1;97mAgregada dirección IP Exitosamente${NC}"
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"

    echo -e ""
    echo -e "  ${YELL}USUARIO${NC}       : $name"
    echo -e "  ${YELL}DIRECCION IP${NC}  : $ip"
    echo -e "  ${YELL}REGISTRADO   ${NC} : $today"
    echo -e "  ${YELL}EXPIRACIÓN${NC}    : $exp2"
    echo ""
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"

    read -n 1 -s -r -p "  Presione cualquier tecla para regresar al MENU"
    menu
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}

del-ip() {
TIMES="10"
CHATID="833821933"
KEY="5340711015:AAEgC3JCrQZ2fkFqfV40UyqLfyzMmXX9BZI"
URL="https://api.telegram.org/bot$KEY/sendMessage"

    rm -rf /scvps
    git clone ${REPO} /scvps &> /dev/null
    clear
    cd /scvps
    clear
    echo ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "          \e[1;97mDirecciones IP Registradas${NC}"
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
grep -E "      ^###"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
grep -E "      ^#&"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
echo ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

    read -p "   Ingrese la IP a Borrar : " ipdel
    name=$(cat /izin | grep $ipdel | awk '{print $2}')
    exp=$(cat /izin| grep $ipdel | awk '{print $3}')
    if [[ ${exp} == 'PERMANENTE' ]]; then
    sed -i "/^#&   $name   $exp $ipdel/,/^},{/d" /izin
    else
    sed -i "/^### $name $exp $ipdel/,/^},{/d" /izin
    fi
    cd /scvps
    #git config --global user.email "${EMAIL}" &> /dev/null
    #git config --global user.name "${USER}" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m 1.0 &> /dev/null
    #git branch -M main &> /dev/null
    git remote add origin https://github.com/JerrySBG/scvps.git &> /dev/null
    git push -f origin main &> /dev/null
    rm -rf /scvps
    clear
    sleep 1
    echo "  Borrado de Direccion IP..."
    sleep 1
    echo "  Procesando..."
    sleep 1
    echo "  Listo!"
    sleep 1
    clear
TEXT1="
<code>───────────────────────────</code>
<code>    BORRADO DE IP CON EXITO</code>
<code>───────────────────────────</code>
<code>USERNAME       : $name</code>
<code>IP Address     : $ipdel</code>
<code>Expired On     : $exp</code>
<code>───────────────────────────</code>
"
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"
    echo -e "          \e[1;97mSe Eliminó con Exito la Dirección IP${NC}"
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"
    echo ""
    echo -e "  ${YELL}Username${NC}   : $name"
    echo -e "  ${YELL}IP Address${NC} : $ipdel"
    echo -e "  ${YELL}Expired On${NC} : $exp"
    echo ""
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"

    read -n 1 -s -r -p "  Presione cualquier tecla para regresar al MENU"
    menu
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT1&parse_mode=html" $URL >/dev/null
}

renew-ip() {
TIMES="10"
CHATID="833821933"
KEY="5340711015:AAEgC3JCrQZ2fkFqfV40UyqLfyzMmXX9BZI"
URL="https://api.telegram.org/bot$KEY/sendMessage"

    rm -rf /root/scvps
    git clone ${REPO} /scvps &> /dev/null
    clear
    cd /scvps
    clear
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "          \e[1;97mDirecciones IP Registradas${NC}"
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
grep -E "      ^###"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
grep -E "      ^#&"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
echo ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    read -p "  Ingresa la IP a Renovar : " ipdel
    read -p "  Ingresa los Dias  : " days
    name=$(cat /izin | grep $ipdel | awk '{print $2}')
    exp=$(cat /izin | grep $ipdel | awk '{print $3}')
    now=$(date +%Y-%m-%d)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(( (d1 - d2) / 86400 ))
    exp3=$(($exp2 + $days))
    exp4=`date -d "$exp3 Dias" +"%Y-%m-%d"`
    sed -i "s/### $name $exp $ipdel/### $name $exp4 $ipdel/g" /izin
    cd /scvps
    #git config --global user.email "${EMAIL}" &> /dev/null
    #git config --global user.name "${USER}" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m 1.0 &> /dev/null
    #git branch -M main &> /dev/null
    git remote add origin https://github.com/JerrySBG/scvps.git &> /dev/null
    git push -f origin main &> /dev/null
    rm -rf /scvps
    clear
    sleep 1
    echo "  Renovando Direccion IP..."
    sleep 1
    echo "  Procesando..."
    sleep 1
    echo "  Listo!"
    sleep 1
    clear
TEXT2="
<code>───────────────────────────</code>
<b>    RENOVADA IP VPS CON EXITO </b>
<code>───────────────────────────</code>
<code>USERNAME       : $name</code>
<code>IP Address     : $ipdel</code>
<code>Expired On     : $exp4</code>
<code>───────────────────────────</code>
"
    echo ""
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"
    echo -e "          \e[1;97mRenovada con Exito la Dirección IP${NC}"
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"

   echo ""
    echo -e "  ${YELL}Username${NC}   : $name"
    echo -e "  ${YELL}IP Address${NC} : $ipdel"
    echo -e "  ${YELL}Expired On${NC} : $exp4"
    echo ""
    echo -e "${BlueCyan} ———————————————————————————————————————${Xark}"


    read -n 1 -s -r -p "Presione cualquier tecla para regresar al MENU"
    menu
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL >/dev/null
}

clear

echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "          [ MENU DE REGISTRO DE IP VPS]${NC}"
echo -e "          NOMBRE DE USUARIO   : $SELLER "
echo -e "          ESTADO DEL USUARIO : $AKTIF "
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "          \e[1;97mDirecciones IP Registradas${NC}"
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
grep -E "      ^###"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
grep -E "      ^#&"    "/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
echo ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${grenbo}[1]$NC  ${YELL}AGREGAR IP VPS"$NC
echo -e "  ${grenbo}[2]$NC  ${YELL}BORRAR IP VPS"$NC
echo -e "  ${grenbo}[3]$NC  ${YELL}RENOVAR IP VPS"$NC
echo -e "  ${grenbo}[4]$NC  ${YELL}SALIR "$NC
echo -e ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -p "  Por Favor, Ingresa Numero del Menu : " menu
case $menu in
1 | 01)
clear
add-ip
;;
2 | 02)
clear
del-ip
;;
3 | 03)
clear
renew-ip
;;

4 | 04)
clear
menu
;;

*)
echo "Por Favor, Ingresa Un Numero Valido del MENU !"
sleep 1
menu
;;
esac
