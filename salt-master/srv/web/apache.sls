install_apache:
    pkg.installed:
        - name: apache2

# make sure apache is running:
#     service.running:
#         - name: apache2
#         - enable: True

sync mod_status.conf:
    file.managed:
        - name: /etc/apache2/mods-enabled/mod_status.conf
        - source: salt://mod_status.conf
        - user: root
        - group: root
        - mode: 600

sync mod_status.load:
    file.managed:
        - name: /etc/apache2/mods-enabled/mod_status.load
        - source: salt://mod_status.load
        - user: root
        - group: root
        - mode: 600
