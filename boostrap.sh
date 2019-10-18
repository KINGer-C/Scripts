echo "Stopping dapscoind..."
dapscoin-cli stop
sleep 10
echo "Downloading bootstrap..."
rm -rf bootstrap.zip
wget --no-check-certificate --content-disposition https://github.com/DAPSCoin/BootStrap/blob/master/bootstrap.zip?raw=true 
echo "Removing old blocks, chainstate, and database folders...."
rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database
echo "Installing new blocks folders..."
unzip bootstrap.zip -d ~/.dapscoin
echo "Bootstrap installed!"
rm -rf bootstrap.zip
