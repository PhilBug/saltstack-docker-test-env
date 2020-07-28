base:
  'os_family:debian':
    - match: grain
    - users_and_ssh

webserver:
  '*minion*':
    - apache