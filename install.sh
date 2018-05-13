#Original code: Tero Karvinen https://github.com/terokarvinen/sirotin/


echo "Starting automatic Fail2Ban installation and configuration"
set -o verbose

echo "Installing Salt Minion and Git"
sudo apt-get update
sudo apt-get -y install git salt-minion


