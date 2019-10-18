echo "Stopping dapscoind..."
dapscoin-cli stop
echo "Downloading bootstrap..."
wget https://github.com/DAPSCoin/BootStrap/releases/download/latest/bootstrap.zip
echo "Removing old blocks, chainstate, database, and peers.dat..."
rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database ~/.dapscoin/peers.dat
echo "Installing new blocks folder and peers.dat..."
unzip bootstrap.zip -d ~/.dapscoin
echo "Bootstrap installed!"
