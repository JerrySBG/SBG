### INSTALAR SCRIPT 
<pre><code>apt install -y && apt update -y && apt upgrade -y && apt install lolcat -y && gem install lolcat && wget -q https://raw.githubusercontent.com/JerrySBG/scvps/main/premi.sh && chmod +x premi.sh && ./premi.sh
</code></pre>

### ACTUALIZACIÓN DE SCRIPT MANUAL
<pre><code>wget https://raw.githubusercontent.com/JerrySBG/scvps/main/update.sh && chmod +x update.sh && ./update.sh
</code></pre>

### TESTEADO EN S.O 
- UBUNTU 20.04.05
- DEBIAN 10

### OTRAS CARACTERISTICAS
- Agregar intercambio de 1 GB
- Instalación dinámica
- Perfil de Ajuste en el Servidor.
- Añadido fail2ban
- Bloquea Automáticamente Algunos Anuncios de Forma Predeterminada.
- Registro de Borrado Automático cada 3 minutos
- Borrado Automatico De Usuarios Expirados
- Detalles de Cuenta de Usuario

### INFORMACIÓN DE PUERTOS
```
- TROJAN WS 443
- TROJAN GRPC 443
- SHADOWSOCKS WS 443
- SHADOWSOCKS GRPC 443
- VLESS WS 443
- VLESS GRPC 443
- VLESS NONTLS 80
- VMESS WS 443
- VMESS GRPC 443
- VMESS NONTLS 80
- SSH WS / TLS 443
- SSH NON TLS 8880
- OVPN SSL/TCP 1194
- SLOWDNS 5300
```

### CONFIGURACIÓNES CLOUDFLARE
```
- SSL/TLS : FULL
- SSL/TLS Recommender : OFF
- GRPC : ON
- WEBSOCKET : ON
- Always Use HTTPS : OFF
- UNDER ATTACK MODE : OFF
