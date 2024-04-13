#!/bin/bash

TOKEN="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"
today=`date -d "0 days" +"%Y-%m-%d"`
git clone https://github.com/JerrySBG/scvps.git /root/scvps/ &> /dev/null
clear

echo -e ""
read -p "Input IP Address : " ip
CLIENT_EXISTS=$(grep -w $ip /root/scvps/izinIP | wc -l)

if [[ ${CLIENT_EXISTS} == '1' ]]; then
    echo "IP Already Exist !"
    rm -rf /root/scvps
    exit 0
fi

echo -e ""
read -p "Input username : " name
echo -e ""

clear
echo -e "Pilih waktu expired:"
echo -e "1. 30 days"
echo -e "2. 60 days"
echo -e "3. 90 days"
echo -e "4. Lifetime"

read -p "Masukkan nomor pilihan: " exp_option

case $exp_option in
    1)
        exp="30"
        ;;
    2)
        exp="60"
        ;;
    3)
        exp="90"
        ;;
    4)
        exp="360"
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

exp2=`date -d "${exp} days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/scvps/izinIP

cd /root/JerrySBG
git config --global user.email "p.layhackbins@gmail.com" &> /dev/null
git config --global user.name "JerrySBG" &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
git add . &> /dev/null
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/JerrySBG/scvps
git push -f https://${TOKEN}@github.com/JerrySBG/scvps.git &> /dev/null
rm -rf /root/scvps
clear
