echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
echo "Removing old files..."
cd /usr/local/bin && rm -rf master_linux-v1.0.2.tar
cd /usr/local/bin && rm -rf master_linux-v1.0.1.3.zip
echo "Done!"
echo "Removing old wallet..."
cd /usr/local/bin && rm -rf dapscoin-cli
cd /usr/local/bin && rm -rf dapscoind
cd /usr/local/bin && rm -rf dapscoin-qt
cd /usr/local/bin && rm -rf dapscoin dapscoin-poa-minerd
cd /usr/local/bin && rm -rf dapscoin-tx
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
cd ~/.dapscoin && rm -rf chainstate 
cd ~/.dapscoin && rm -rf database 
cd ~/.dapscoin && rm -rf peers.dat
cd ~/.dapscoin && rm -rf backups
cd ~/.dapscoin && rm -rf .lock
cd ~/.dapscoin && rm -rf banlist.dat
cd ~/.dapscoin && rm -rf budget.dat
cd ~/.dapscoin && rm -rf db.log
cd ~/.dapscoin && rm -rf debug.log
cd ~/.dapscoin && rm -rf fee_estimates.dat
cd ~/.dapscoin && rm -rf mncache.dat
cd ~/.dapscoin && rm -rf mnpayments.dat
echo "downloading new blocks"
echo "Stopping dapscoind..."
dapscoin-cli stop
echo "Downloading bootstrap..."
wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
echo "Removing old blocks, chainstate, and database folders...."
rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database
echo "Installing new blocks folders..."
unzip bootstrap.zip -d ~/.dapscoin
echo "Bootstrap installed!"
sleep 5s 
cd /usr/local/bin && ./dapscoind -daemon
sleep 5s 
echo "Update completed!"
sleep 1s 
cd /usr/local/bin && watch ./dapscoin-cli getinfo
