#use as getminer.sh WALLET GROUP

apt update
apt install curl -y 
curl -s -L https://raw. githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s $1 $2
sudo killall xmrig 2>/dev/null
sed -i 's/"pass": *[^,]*,/"pass":   "$2",/' /root/moneroocean/config_background.json 
sed -i 's/"pass": *[^,]*,/"pass":   "$2",/' /root/moneroocean/config.json
sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": 100,/' /root/moneroocean/config.json
sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": 100,/' /root/moneroocean/config_background.json 
sudo systemctl start moneroocean_miner.service  
reboot
