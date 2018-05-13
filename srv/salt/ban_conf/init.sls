fail2ban:
  pkg.installed

/etc/fail2ban/jail.local:
  file.managed:
    - source: salt://ban_conf/jail.local
    - template: jinja
    - context:
      bantime: {{ pillar.get('bantime', '3600') }}
      findtime: {{ pillar.get('findtime', '600') }}
      maxretry: {{ pillar.get('maxretry', '5') }}
      email: {{ pillar.get('email', 'root@localhost') }}

fail2ban_service:
  service.running:
    - name: fail2ban
    - watch:
      - file: /etc/fail2ban/jail.local
