clear
echo "#################################"
echo "### DAPS MASTERNODE UPDATE   ####"
echo "########## By KINGer-C ##########"
echo "#################################"
clear
sleep 2s
clear
while :
do
echo "##############################"
echo "#   WHAT DO YOU WANNA DO?    #"
echo "##############################"
echo "# u0 - Update IPV4 DAPSMN00  #"
echo "# u1 - Update IPV6 DAPSMN01  #"
echo "# u2 - Update IPV6 DAPSMN02  #"
echo "# u3 - Update IPV6 DAPSMN03  #"
echo "# u4 - Update IPV6 DAPSMN04  #"
echo "# u5 - Update IPV6 DAPSMN05  #"
echo "# u6 - Update IPV6 DAPSMN06  #"
echo "# e - Exit                   #"
echo "##############################"
read choise
clear
if [ $choise = u0 ]; then
  dapscoin-cli stop && wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.4/master_linux-v1.0.4.6.zip && sleep 10s && sudo unzip -jo master_linux-v1.0.4.6.zip -d /usr/local/bin && sleep 10s && cd ~ && rm -rf master_linux-v1.0.4.6.zip && dapscoind -daemon
elif [ $choise = 'u1' ]; then
 dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind01 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli01 && sleep 10s && dapscoind01 -datadir=/root/.dapscoin01 -wallet=wallet01.dat
elif [ $choise = '2' ]; then
 dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind02 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli02 && sleep 10s && dapscoind02 -datadir=/root/.dapscoin02 -wallet=wallet02.dat
elif [ $choise = 'u3' ]; then
 dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind03 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli03 && sleep 10s && dapscoind03 -datadir=/root/.dapscoin03 -wallet=wallet03.dat
elif [ $choise = 'u4' ]; then
 dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind04 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli04 && sleep 10s && dapscoind04 -datadir=/root/.dapscoin04 -wallet=wallet04.dat
elif [ $choise = 'u5' ]; then
 dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind05 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli05 && sleep 10s && dapscoind05 -datadir=/root/.dapscoin05 -wallet=wallet05.dat
elif [ $choise = 'u6' ]; then
 dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 stop && sudo cp /usr/local/bin/dapscoind /usr/local/bin/dapscoind06 && sudo cp /usr/local/bin/dapscoin-cli /usr/local/bin/dapscoin-cli06 && sleep 10s && dapscoind06 -datadir=/root/.dapscoin06 -wallet=wallet06.dat
elif [ $choise = 'e' ]; then
    rm -rf upv46.sh && break
else 
  echo "!!!Comand not found !!! \n Try Again"
fi
done
