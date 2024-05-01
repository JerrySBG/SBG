#!/bin/bash
# // script credit by CyberVPN
# // Moded By Boss Muda
# // ini adalah script autoinstall ssh multiport untuk instalasi vpn server dan tunneling service
wget https://tmtunnel.tech/script/link.sh && chmod 755 link.sh
source link.sh
MYIP=$(curl -sS ipv4.icanhazip.com)
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
cyan='\e[1;32m'

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain

ln -fs /usr/share/zoneinfo/America/Denver /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2


mkdir -p /var/lib/scrz-prem >/dev/null 2>&1
echo "IP=" >> /var/lib/scrz-prem/ipvps.conf

sudo at install squid -y
sudo apt install net-tools -y
sudo apt install vnstat -y
wget -q https://raw.githubusercontent.com/amirulckck/test/main/dependencies.sh;chmod +x dependencies.sh;./dependencies.sh
rm dependencies.sh
clear
# izin
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Revisa tu VPS o Contacta al Admin"
sleep 0.5
CEKEXPIRED () {
        today=$(date -d +1day +%Y -%m -%d)
        Exp1=$(curl -sS https://raw.githubusercontent.com/JerrySBG/scvps/main/izin | grep $MYIP | awk '{print $3}')
        if [[ $today < $Exp1 ]]; then
        echo "Estado del Script..... ACTIVO."
        else
        echo "SU SCRIPT ESTÁ VENCIDO COMPRA NO SEAS CODO";
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/JerrySBG/scvps/main/izin | grep $MYIP | awk '{print $4}')
if [ $MYIP = $IZIN ]; then
echo "PERMISO RECIBIDO!!"
CEKEXPIRED
else
echo "¡¡Acceso denegado!! Que Mal Para Ti!!";
rm setup.sh
rm link.sh
exit 0
fi

clear
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   $red  Agregar dominio para Vmess/Vless/Trojan dll"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " "
read -rp "Ingrese su dominio : " -e pp
    if [ -z $pp ]; then
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo -e "
        ¡Nada de entrada para dominios!
        Entonces se creará un dominio aleatorio."
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    else
        echo "$pp" > /root/scdomain
    echo "$pp" > /etc/xray/scdomain
    echo "$pp" > /etc/xray/domain
    echo "$pp" > /etc/v2ray/domain
    echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/scrz-prem/ipvps.conf
    fi

clear
#install ssh ovpn
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
echo -e "$red             Install SSH / WS               $NC"
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
sleep 2
wget https://raw.githubusercontent.com/JerrySBG/scvps/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 2
clear
wget https://raw.githubusercontent.com/JerrySBG/scvps/main/nginx-ssl.sh && chmod +x nginx-ssl.sh && ./nginx-ssl.sh

wget https://raw.githubusercontent.com/JerrySBG/scvps/main/ssh/set-br.sh &&  chmod +x set-br.sh && ./set-br.sh
clear

#install ssh ovpn
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
echo -e "$red             Install Websocket              $NC"
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
sleep 2
clear
wget https://tmtunnel.tech/script/insshws.sh && chmod +x insshws.sh && ./insshws.sh
#wget https://raw.githubusercontent.com/JerrySBG/scvps/main/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear 1
cd /usr/bin
wget -O xp "https://raw.githubusercontent.com/JerrySBG/scvps/main/xp.sh"
chmod +x xp
sleep 1
wget -q -O /usr/bin/notramcpu "https://raw.githubusercontent.com/JerrySBG/scvps/main/notramcpu" && chmod +x /usr/bin/notramcpu
cd
rm -f /root/ins-xray.sh
rm -f /root/insshws.sh
rm -f /root/xraymode.sh

#xray
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
echo -e "$red             Install Xray              $NC"
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
sleep 2
wget -q -O ins-xray.sh https://raw.githubusercontent.com/JerrySBG/scvps/main/mode/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
sleep 1
#wget -q -O senmenu.sh https://raw.githubusercontent.com/JerrySBG/scvps/main/senmenu.sh && chmod +x senmenu.sh && ./senmenu.sh
wget https://raw.githubusercontent.com/JerrySBG/scvps/main/menu.zip
unzip menu.zip
chmod +x menu/*
mv menu/* /usr/local/sbin
rm -rf menu
rm -rf menu.zip
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
echo -e "$red             Install Slowdns              $NC"
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
sleep 2
wget -q -O slowdns.sh https://raw.githubusercontent.com/JerrySBG/scvps/main/udp/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
sleep 2
wget -q -O udp.sh https://raw.githubusercontent.com/JerrySBG/scvps/main/udp.sh && chmod +x udp.sh && ./udp.sh
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
echo -e "$red             Install OpenVPN              $NC"
echo -e '\e[32;1m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m'
sleep 2
wget -q -O vpn.sh https://raw.githubusercontent.com/JerrySBG/scvps/main/ssh/vpn.sh && chmod 777 vpn.sh && ./vpn.sh
#cronjob
#echo "30 * * * * root removelog" >> /etc/crontab

rm -rf /etc/vmess/.vmess.db
    rm -rf /etc/vless/.vless.db
    rm -rf /etc/trojan/.trojan.db
    rm -rf /etc/shadowsocks/.shadowsocks.db
    rm -rf /etc/ssh/.ssh.db
    rm -rf /etc/bot/.bot.db
    mkdir -p /etc/bot
    mkdir -p /etc/xray
    mkdir -p /etc/vmess
    mkdir -p /etc/vless
    mkdir -p /etc/trojan
    mkdir -p /etc/shadowsocks
    mkdir -p /etc/ssh
    mkdir -p /usr/bin/xray/
    mkdir -p /var/log/xray/
    mkdir -p /var/www/html
    mkdir -p /etc/kyt/limit/vmess/ip
    mkdir -p /etc/kyt/limit/vless/ip
    mkdir -p /etc/kyt/limit/trojan/ip
    mkdir -p /etc/kyt/limit/ssh/ip
    mkdir -p /etc/limit/vmess
    mkdir -p /etc/limit/vless
    mkdir -p /etc/limit/trojan
    mkdir -p /etc/limit/ssh
    chmod +x /var/log/xray
    touch /etc/xray/domain
    touch /var/log/xray/access.log
    touch /var/log/xray/error.log
    touch /etc/vmess/.vmess.db
    touch /etc/vless/.vless.db
    touch /etc/trojan/.trojan.db
    touch /etc/shadowsocks/.shadowsocks.db
    touch /etc/ssh/.ssh.db
    touch /etc/bot/.bot.db
    echo "& plughin Account" >>/etc/vmess/.vmess.db
    echo "& plughin Account" >>/etc/vless/.vless.db
    echo "& plughin Account" >>/etc/trojan/.trojan.db
    echo "& plughin Account" >>/etc/shadowsocks/.shadowsocks.db
    echo "& plughin Account" >>/etc/ssh/.ssh.db
#pemangkuvmessvless
#mkdir /root/akun
#mkdir /root/akun/vmess
#mkdir /root/akun/vless
#mkdir /root/akun/shadowsocks
#mkdir /root/akun/trojan


#install remove log
echo "0 5 * * * root reboot" >> /etc/crontab
echo "* * * * * root clog" >> /etc/crontab
echo "59 * * * * root pkill 'menu'" >> /etc/crontab
echo "0 1 * * * root xp" >> /etc/crontab
echo "*/5 * * * * root notramcpu" >> /etc/crontab
service cron restart
clear
org=$(curl -s https://ipapi.co/org )
echo "$org" > /root/.isp

cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
cd
echo "3.0.0" > versi
clear
rm -f ins-xray.sh
#rm -f senmenu.sh
rm -f setupku.sh
rm -f xraymode.sh
rm -f slowdns.sh

echo "===============-[ SCRIPT VPN PREMIUM ]-================"
echo ""
echo "------------------------------------------------------------"
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 53, 2222, 2269"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80,8880,8080" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - Stunnel5                : 222, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Trojan GO               : 443" | tee -a log-install.txt
echo "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo "   - slowdns                 : 443,80,8080,53,5300" | tee -a log-install.txt
echo "   - Udp Custom              : 1-65535"           |  tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : America/Mexico (UTC -6)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Sesion De Usuarios" | tee -a log-install.txt
echo "   - Auto Eliminar Cuentas Expiradas" | tee -a log-install.txt
echo "   - Auto Script Mod" | tee -a log-install.txt
echo "   - VPS Settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Cambiar puertos" | tee -a log-install.txt
echo "   - Restaurar Datos" | tee -a log-install.txt
echo "   - Traducido al Español" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "===============-[ Script Mod By Jerry SBG ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
echo "ADIOS MANCO"
sleep 1
echo -ne "[ ${yell}PELIGRO${NC} ] DESEAS REINICIAR PARA CARGAR EL AUTOSCRIPT ? (S/N)? "
read answer
if [ "$answer" == "${answer#[Ss]}" ] ;then
exit 0
else
reboot
fi
