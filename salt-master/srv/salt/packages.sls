{% for package in pillar['packages'] %}
install_{{ package }}:
    pkg.installed:
        - name: {{ package }}
{% endfor %}