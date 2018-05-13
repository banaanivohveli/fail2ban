fail2ban:
  pkg.installed

/etc/fail2ban/jail.local:
  file.managed:
    - source: salt://ban_conf/jail.local
    - template: jinja
    - context:
      bantime: {{ pillar['bantime'] }}
      findtime: {{ pillar['findtime'] }}
      maxretry: {{ pillar['maxretry'] }}
      email: {{ pillar['email'] }}

fail2ban_service:
  service.running:
    - name: fail2ban
    - watch:
      - file: /etc/fail2ban/jail.local
