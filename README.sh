# Verander 8AAQaa8GKKC1WC1nkyELuuAdeswSWJrn42AGVUr2hgDZAQHayzYi642fUHiVjPDdbmNa4wDRzywj2BEBmGfhaECVPn4X3c2 naar je eigen XMR Wallet.
# check  https://moneroocean.stream/ gebruik walletaddress
#
apt update
apt install curl -y 
curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 8AAQaa8GKKC1WC1nkyELuuAdeswSWJrn42AGVUr2hgDZAQHayzYi642fUHiVjPDdbmNa4wDRzywj2BEBmGfhaECVPn4X3c2
sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": 75,/' $HOME/moneroocean/config.json
sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": 75,/' $HOME/moneroocean/config_background.json
