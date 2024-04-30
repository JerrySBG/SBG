#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Link Hosting Kalian Untuk Ssh Vpn
bzvpn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ssh"
# Link Hosting Kalian Untuk Sstp
bzvpnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/sstp"
# Link Hosting Kalian Untuk Ssr
bzvpnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ssr"
# Link Hosting Kalian Untuk Shadowsocks
bzvpnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
bzvpnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/wireguard"
# Link Hosting Kalian Untuk Xray
bzvpnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/xray"
# Link Hosting Kalian Untuk Ipsec
bzvpnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ipsec"
# Link Hosting Kalian Untuk Backup
bzvpnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/backup"
# Link Hosting Kalian Untuk Websocket
bzvpnnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/websocket"
# Link Hosting Kalian Untuk Ohp
bzvpnnnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ohp"

# Getting
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ SCRIPT BY @XDecrytorId ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 5
MYIP=$(wget -qO- ipinfo.io/ip);
#IZIN=$( curl https://raw.githubusercontent.com/JerrySBG/SBG/main/izin | grep $MYIP )
#echo "Memeriksa Hak Akses VPS..."
#if [ $MYIP = $IZIN ]; then
#clear
#echo -e "${CYAN}Acceso permitido...${off}"
#sleep 1
#else
#clear
#echo -e "${PURPLE}Acceso Denegado!${off}"
#echo "Hanya Untuk Pengguna Berbayar!"
#echo "Silahkan Hubungi Admin"
#exit 0
#fi
clear
echo "Checking VPS"
clear
sleep 1
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ @SBG PROJECT ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
mkdir /var/lib/bzstorevpn;
echo "IP=" >> /var/lib/bzstorevpn/ipvps.conf
wget https://${bzvpn}/cf.sh && chmod +x cf.sh && ./cf.sh
#install v2ray
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL V2RAY ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnn}/ins-xray.sh && chmod +x ins-xray.sh && screen -S xray ./ins-xray.sh
#install ssh ovpn
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL SSH-CDN ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpn}/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://${bzvpnn}/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL SSR ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnn}/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://${bzvpnnnn}/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL WG ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnn}/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL L2TP ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnn}/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://${bzvpnnnnnnnn}/set-br.sh && chmod +x set-br.sh && ./set-br.sh
# Websocket
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL WEBSOCKET ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnnnn}/websocket.sh && chmod +x websocket.sh && ./websocket.sh
# Ohp Server
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL OHP ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnnnnn}/ohp.sh && chmod +x ohp.sh && ./ohp.sh
wget https://${bzvpnnnnnnnnnn}/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://${bzvpnnnnnnnnnn}/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
wget -q -O /tmp/nameserver https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/slowdns/nameserver && chmod +x /tmp/nameserver &&  ./tmp/nameserver | tee /root/install.log 
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/websocket.sh
rm -f /root/ohp.sh
rm -f /root/ohp-dropbear.sh
rm -f /root/ohp-ssh.sh
#rm -f /root/nameserver
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://t.me/anuybazoelk

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://${bzvpn}/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
echo " "
echo "Installation has been completed!!"echo " "
echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 443, 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 990"  | tee -a log-install.txt
echo "   - Stunnel5                : 443, 445, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 443, 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - DNS Client              : 443, 53, 2222" | tee -a log-install.txt
echo "   - DNS Server              : 443, 88" | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - XRAYS Vmess TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Vmess GRPC        : 443" | tee -a log-install.txt
echo "   - XRAYS Vless TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS Vless None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Vless GRPC        : 443" | tee -a log-install.txt
echo "   - XRAYS Trojan TLS        : 443" | tee -a log-install.txt
echo "   - XRAYS Trojan None TLS.  : 80" | tee -a log-install.txt
echo "   - XRAYS Trojan GRPC       : 443" | tee -a log-install.txt
echo "   - Sowdowsoks TLS          : 443" | tee -a log-install.txt
echo "   - Sowdowsoks None TLS     : 80" | tee -a log-install.txt
echo "   - Sowdowsoks GRPC         : 443" | tee -a log-install.txt
echo "   - Websocket TLS           : 443, 2096"  | tee -a log-install.txt
echo "   - Websocket None TLS      : 80, 8880"  | tee -a log-install.txt
echo "   - Websocket Ovpn          : 2086"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8585"  | tee -a log-install.txt
echo "   - OHP Dropbear            : 8686"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8787"  | tee -a log-install.txt
echo "   - Trojan Go               : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL @XDecrytorId  PROJECT SELESAI ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
reboot
