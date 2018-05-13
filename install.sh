# Original code: Tero Karvinen https://github.com/terokarvinen/sirotin/
# Run this script if you _don't have_ Salt Minion and/or Git installed.
# If you have them installed, run suola.sh

echo "Starting automatic Fail2Ban installation and configuration"
# set -o verbose

echo "Installing Salt Minion and Git"
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Setting up Salt and copying Git repository"
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/banaanivohveli/fail2ban.git
cd fail2ban/
bash suola.sh

echo "Done! Domo arigato, Mr. Roboto"
