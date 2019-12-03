while :
do
echo "####################################################"
echo "#                WHAT DO YOU WANNA DO?             #"
echo "####################################################"
echo "# rx0 - REINDEX the IPV4 DAPSMN00 - .dapscoin      #"
echo "# rx1 - REINDEX  the IPV6 DAPSMN01 - .dapscoin01   #"
echo "# rx2 - REINDEX  the IPV6 DAPSMN02 - .dapscoin02   #"
echo "# rx3 - REINDEX  the IPV6 DAPSMN03 - .dapscoin03   #"
echo "# rx4 - REINDEX  the IPV6 DAPSMN04 - .dapscoin04   #"
echo "# rx5 - REINDEX  the IPV6 DAPSMN05 - .dapscoin05   #"
echo "# rx6 - REINDEX  the IPV6 DAPSMN06 - .dapscoin06   #"
echo "# e - exit                                         #"
echo "####################################################"
read choise
clear
if [ $choise = 'rx0' ]; then
  dapscoin-cli stop && sleep 10s && dapscoind -reindex && sleep 10s && watch dapscoin-cli getinfo
elif [ $choise = 'rx1' ]; then
  dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 stop && sleep 10s && dapscoind01 -datadir=/root/.dapscoin01 -wallet=wallet01.dat -reindex && sleep 10s && watch dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 getinfo
elif [ $choise = 'rx2' ]; then
  dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 stop && sleep 10s && dapscoind02 -datadir=/root/.dapscoin02 -wallet=wallet02.dat -reindex && sleep 10s && watch dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 getinfo
elif [ $choise = 'rx3' ]; then
  dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 stop && sleep 10s && dapscoind03 -datadir=/root/.dapscoin03 -wallet=wallet03.dat -reindex && sleep 10s && watch dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 getinfo
elif [ $choise = 'rx4' ]; then
  dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 stop && sleep 10s && dapscoind04 -datadir=/root/.dapscoin04 -wallet=wallet04.dat -reindex && sleep 10s && watch dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 getinfo
elif [ $choise = 'rx5' ]; then
  dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 stop && sleep 10s && dapscoind05 -datadir=/root/.dapscoin05 -wallet=wallet05.dat -reindex && sleep 10s && watch dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 getinfo
elif [ $choise = 'rx6' ]; then
  dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 stop && sleep 10s && dapscoind06 -datadir=/root/.dapscoin06 -wallet=wallet06.dat -reindex && sleep 10s && watch dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 getinfo
elif [ $choise = 'e' ]; then
  rm -rf reindex.sh && break
else 
  echo "Command not found, Please try Again !" && sleep 3s && clear
fi
done
