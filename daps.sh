clear
echo "#################################"
echo "### DAPS MASTERNODE EASY WAY ####"
echo "########## By KINGer-C ##########"
echo "#################################"
sleep 2s
rm -rf dapsipv4.sh
rm -rf dapsipv61_DAPSMN01.sh
rm -rf dapsipv61_DAPSMN02.sh
rm -rf dapsipv61_DAPSMN03.sh
rm -rf dapsipv61_DAPSMN04.sh
rm -rf dapsipv61_DAPSMN05.sh
rm -rf dapsipv61_DAPSMN06.sh
clear
sleep 2s
clear
while :
do
echo "###################################################################################"
ls -a
echo "###################################################################################"
echo "#                                WHAT DO YOU WANNA DO?                            #"
echo "###################################################################################"
echo "# 0 - Install the IPV4 DAPSMN00 - .dapscoin   # r0 - Uninstall the IPV4 DAPSMN00  #"
echo "# 1 - Install the IPV6 DAPSMN01 - .dapscoin01 # r1 - Uninstall the IPV6 DAPSMN01  #"
echo "# 2 - Install the IPV6 DAPSMN02 - .dapscoin02 # r2 - Uninstall the IPV6 DAPSMN02  #"
echo "# 3 - Install the IPV6 DAPSMN03 - .dapscoin03 # r3 - Uninstall the IPV6 DAPSMN03  #"
echo "# 4 - Install the IPV6 DAPSMN04 - .dapscoin04 # r4 - Uninstall the IPV6 DAPSMN04  #"
echo "# 5 - Install the IPV6 DAPSMN05 - .dapscoin05 # r5 - Uninstall the IPV6 DAPSMN05  #"
echo "# 6 - Install the IPV6 DAPSMN06 - .dapscoin06 # r6 - Uninstall the IPV6 DAPSMN06  #"
echo "# u - update and upgrade ( recomended once)   # s2 - swap 2Gb memory              #"
echo "# s4 - Swap 4Gb memory                        # s6 - Swap 6gb memory              #"
echo "# c1 - Configure ipv6 (ubuntu 16)             # c2 - Configure ipv6 (ubuntu 18)   #"
echo "# i - Get ip information                      # e - exit                          #"
echo "# o - Only ipv6  - you can ingnore de ipv6 warings about ipv4 pre-instalation     #"
echo "# up - Update the wallet from 1.0.3.4 to 1.0.4.6 binarys                          #"
echo "###################################################################################"
read choise
clear
if [ $choise = 0 ]; then
  rm -rf dapsipv4.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv4.sh && chmod 777 dapsipv4.sh && bash dapsipv4.sh
elif [ $choise = '1' ]; then
  rm -rf dapsipv61_DAPSMN01.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN01.sh && chmod 777 dapsipv61_DAPSMN01.sh && bash dapsipv61_DAPSMN01.sh
elif [ $choise = '2' ]; then
  rm -rf dapsipv61_DAPSMN02.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN02.sh && chmod 777 dapsipv61_DAPSMN02.sh && bash dapsipv61_DAPSMN02.sh
elif [ $choise = '3' ]; then
  rm -rf dapsipv61_DAPSMN03.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN03.sh && chmod 777 dapsipv61_DAPSMN03.sh && bash dapsipv61_DAPSMN03.sh
elif [ $choise = '4' ]; then
  rm -rf dapsipv61_DAPSMN04.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN04.sh && chmod 777 dapsipv61_DAPSMN04.sh && bash dapsipv61_DAPSMN04.sh
elif [ $choise = '5' ]; then
  rm -rf dapsipv61_DAPSMN05.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN05.sh && chmod 777 dapsipv61_DAPSMN05.sh && bash dapsipv61_DAPSMN05.sh
elif [ $choise = '6' ]; then
  rm -rf dapsipv61_DAPSMN06.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN06.sh && chmod 777 dapsipv61_DAPSMN06.sh && bash dapsipv61_DAPSMN06.sh
elif [ $choise = 'o' ]; then
  wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.4/master_linux-v1.0.4.6.zip && sudo apt-get install unzip -y && sudo unzip -jo master_linux-v1.0.4.6.zip -d /usr/local/bin && sudo chmod +x /usr/local/bin/daps* && rm -rf master_linux-v1.0.4.6.zip
elif [ $choise = 'r0' ]; then
  dapscoin-cli stop && rm -rf .dapscoin
elif [ $choise = 'r1' ]; then
  dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 stop && rm -rf .dapscoin01
elif [ $choise = 'r2' ]; then
  dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 stop && rm -rf .dapscoin02
elif [ $choise = 'r3' ]; then
  dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 stop && rm -rf .dapscoin03
elif [ $choise = 'r4' ]; then
  dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 stop && rm -rf .dapscoin04
elif [ $choise = 'r5' ]; then
  dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 stop && rm -rf .dapscoin05
elif [ $choise = 'r6' ]; then
  dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 stop && rm -rf .dapscoin06
elif [ $choise = 'u' ]; then
  sudo apt-get install unzip && sudo apt-get update && sudo apt-get  upgrade -y
elif [ $choise = 'up' ]; then
  rm -rf upv4.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/upv4.sh && chmod 777 upv4.sh && bash upv4.sh
elif [ $choise = 'c1' ]; then
  nano /etc/network/interfaces && systemctl restart networking
elif [ $choise = 'c2' ]; then
  sudo nano /etc/netplan/10-ens3.yaml && netplan apply
elif [ $choise = 'i' ]; then
  ifconfig
elif [ $choise = 'e' ]; then
    rm -rf daps.sh && break
elif [ $choise = 's4' ]; then
  sudo fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
elif [ $choise = 's2' ]; then
  sudo fallocate -l 2G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
elif [ $choise = 's6' ]; then
  sudo fallocate -l 6G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h
else
  echo "Command not found, please restart the instalation"
fi
cd ~
rm -rf daps.sh
done
