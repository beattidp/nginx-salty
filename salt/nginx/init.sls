
nginx:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: nginx
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default


/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/files/etc/nginx/nginx.conf
    - user: root
    - group: root
    - mode: 640

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://nginx/files/etc/nginx/sites-available/default.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640

/usr/share/nginx/html/404.html:
  file.managed:
    - source: salt://nginx/files/usr/share/nginx/html/404.html
    - user: root
    - group: root
    - mode: 640
