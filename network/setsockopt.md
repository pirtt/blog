# setsockopt & getsockopt

```c
int setsockopt(int sockfd, int level, int optname,const void *optval, socklen_t optlen);
int getsockopt(int sockfd, int level, int optname,void *optval, socklen_t *optlen);
```
## 描述
----
|argv|note|
|:---:|:---|
|sockfd|socket fd|    
|level|协议级别定义在<netinet/in.h>|
|optname|选项名称socket选项定义在<sys/socket.h>|
|optval|选项值|
|optlen|选项字节长度| 
----
- SO_DEBUG  
- SO_BROADCAST
- SO_REUSEADDR
- SO_KEEPALIVE
- SO_LINGER
- SO_OOBINLINE
- SO_SNDBUF
- SO_RCVBUF
- SO_DONTROUTE  不通过网关和默认路由
- SO_RCVLOWAT   接收字节低水位
- SO_RCVTIMEO
- SO_SNDLOWAT   发送字节低水位
- SO_SNDTIMEO

some detial scan 
[linux document](https://linux.die.net/man/3/setsockopt)  