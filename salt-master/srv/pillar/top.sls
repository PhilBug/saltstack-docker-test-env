base:
    '*':
        - core
        - packages
        # - test-file
    'os_family:debian':
        - match: grain
        - ssh_key
    'salt-minion1':
        # - match: grain
        - test-file
