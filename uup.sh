echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
echo "Removing old files..."
cd /usr/local/bin && sudo rm -rf master_linux-v1.0.2.tar
cd /usr/local/bin && sudo rm -rf master_linux-v1.0.1.3.zip
echo "Done!"
echo "Removing old wallet..."
cd /usr/local/bin && sudo rm -rf dapscoin-cli
cd /usr/local/bin && sudo rm -rf dapscoind
cd /usr/local/bin && sudo rm -rf dapscoin-qt
cd /usr/local/bin && sudo rm -rf dapscoin dapscoin-poa-minerd
cd /usr/local/bin && sudo rm -rf dapscoin-tx
echo "Done!"
echo "Downloading update..."
cd /usr/local/bin && wget https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.2/master_linux-v1.0.2.tar
echo "Done!"
echo "Extracting update..."
cd /usr/local/bin && sudo tar -xvf master_linux-v1.0.2.tar
echo "Done!"
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
echo "Done!"
echo "Set permissions on files..."
cd /usr/local/bin && sudo chmod 777 daps*
sleep 2s 
echo "Deleting blocks"
cd ~/.dapscoin && rm -rf blocks 
echo "blocks Deleted!"
cd ~/.dapscoin && rm -rf chainstate 
echo "chainstate Deleted!"
cd ~/.dapscoin && rm -rf database 
echo "database Deleted!"
cd ~/.dapscoin && rm -rf peers.dat
echo "peers.dat Deleted!"
cd ~/.dapscoin && rm -rf backups
echo "backups Deleted!"
cd ~/.dapscoin && rm -rf .lock
echo ".lock Deleted!"
cd ~/.dapscoin && rm -rf banlist.dat
echo "banlist.dat Deleted!"
cd ~/.dapscoin && rm -rf budget.dat 
echo "budget.dat  Deleted!"
cd ~/.dapscoin && rm -rf db.log
echo "db.log Deleted!"
cd ~/.dapscoin && rm -rf debug.log
echo "debug.log Deleted!"
cd ~/.dapscoin && rm -rf fee_estimates.dat
echo "fee_estimates.dat Deleted!"
cd ~/.dapscoin && rm -rf mncache.dat
echo "mncache.dat Deleted!"
cd ~/.dapscoin && rm -rf mnpayments.dat
echo "mnpayments.dat Deleted!"
cd ~/.dapscoin && rm -rf dapscoin.pid
echo "dapscoin.pid Deleted!"
cd ~/.dapscoin && rm -rf masternode.conf
echo "masternode.conf Deleted!"
cd ~/.dapscoin && rm -rf wallet.dat
echo "wallet.dat Deleted!"
sleep 5s
echo "downloading new blocks"
cd /usr/local/bin && ./dapscoind -daemon
sleep 5s
cd /usr/local/bin && ./dapscoin-cli addnode 185.170.114.123:53572 add
cd /usr/local/bin && ./dapscoin-cli addnode 144.217.208.240:53572 add
cd /usr/local/bin && ./dapscoin-cli addnode 80.211.19.197:53572 add
sleep 5s 
echo "Update completed!"
sleep 1s 
cd /usr/local/bin && watch ./dapscoin-cli getinfo
