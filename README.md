# saltstack-docker-test-env

[saltstack test environment powered by docker](https://medium.com/@jmarhee/creating-a-saltstack-test-environment-with-docker-compose-7dfa79837712)

## How to run

```bash
docker-compose up -d --build
docker exec -it salt-master bash

salt '*' cmd.run 'hostname'
```

## salt-api

add proper entry to `/etc/salt/master`  
https://salt-sproxy.readthedocs.io/en/latest/salt_api.html
