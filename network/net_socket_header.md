## 网络socket头文件介绍
```c
//ip头部 
linux/ip.h
netinet/ip.h
//tcp头部
linux/tcp.h
netinet/tcp.h
//udp头部
linux/udp.h
netinet/udp.h
//icmp头部
linux/icmp.h
netinet/ip_icmp.h    
//arp头部
linux/if_arp.h
net/if_arp.h//some header in net folder
//以太网头部
linux/if_ether.h
netinet/if_ether.h
//常用库
netinet/in.h //struct sockaddr_in,htons...
arpa/inet.h //inet_ntoa,inet_aton,inet_pton...
sys/socket.h //socket API
/*
other network proto. in net* or arpa
*/
```