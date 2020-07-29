base:
    # '*minion* and G@os_family:debian':
    '*minion*':
        - packages
    # 'os_family:debian':
    # - match: grain
    # - users_and_ssh

webserver:
    '*minion*':
        - apache