# Fail2Ban auto-conf and install

## How to use

If you don't have Salt-Minion and/or Git:

	wget https://raw.githubusercontent.com/banaanivohveli/fail2ban/master/install.sh
	bash install.sh

If you have both of them:

	git clone https://github.com/banaanivohveli/fail2ban.git
	cd fail2ban
	bash suola.sh

## Editing values

Change the values in /srv/pillar/ files to whatever pleases you. Default bantime is 30 minutes (1800 seconds).  
After changing a value remember to run suola.sh again.

## Sources

Tero Karvinen's website http://terokarvinen.com/  
Tero Karvinen's sirotin https://github.com/terokarvinen/sirotin  
Digital Ocean's Fail2Ban guide https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04
