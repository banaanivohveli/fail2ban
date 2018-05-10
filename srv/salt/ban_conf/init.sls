fail2ban:
  pkg.installed

/etc/fail2ban/jail.local:
  file.managed:
    - source: salt://ban_conf/jail.local

fail2ban_service:
  service.running:
    - name: fail2ban
    - watch:
      - file: /etc/fail2ban/jail.local
