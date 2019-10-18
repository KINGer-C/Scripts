echo "Stopping dapscoind..."
cd /usr/local/bin && dapscoin-cli stop
sleep 2s 
cd /usr/local/bin 
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
echo "Deleting blocks"
cd /root/.dapscoin && rm -rf blocks 
cd /root/.dapscoin && rm -rf chainstate 
cd /root/.dapscoin && rm -rf database 
cd /root/.dapscoin && rm -rf peers.dat
cd /root/.dapscoin && rm -rf backups
cd /root/.dapscoin && rm -rf .lock
cd /root/.dapscoin && rm -rf banlist.dat
cd /root/.dapscoin && rm -rf budget.dat
cd /root/.dapscoin && rm -rf db.log
cd /root/.dapscoin && rm -rf debug.log
cd /root/.dapscoin && rm -rf fee_estimates.dat
cd /root/.dapscoin && rm -rf mncache.dat
cd /root/.dapscoin && rm -rf mnpayments.dat
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
cd /usr/local/bin && sudo chmod +x /usr/local/bin/daps*
sleep 2s 
echo "downloading new blocks"
cd /root/.dapscoin && wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
cd /root/.dapscoin && sudo unzip bootstrap.zip -d ~/.dapscoin
cd /root/.dapscoin && rm -rf bootstrap.zip 
cd /root/.dapscoin && rm -rf boostrap.sh
echo "Done!"
echo "Running dapscoind..."
sleep 5s 
cd /usr/local/bin && ./dapscoind -daemon
sleep 5s 
echo "Update completed!"
sleep 1s 
cd /usr/local/bin && watch ./dapscoin-cli getinfo
