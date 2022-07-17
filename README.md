# kushikatsu - SSH proxy

Automatically detect the current network and use ssh proxy only if necessary.

Example of .ssh/config:
```
Host target
  ProxyCommand ~/kushikatsu/kushikatsu.sh fumidai %h %p
  HostName target.example.com

Host fumidai
  HostName fumidai.example.com
```
