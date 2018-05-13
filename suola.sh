# Original code: Tero Karvinen https://github.com/terokarvinen/sirotin/

sudo salt-call --local state.highstate --file-root srv/salt/ --pillar-root srv/pillar/
