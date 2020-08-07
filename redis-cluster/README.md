# redis-cluster-docker
在本机模拟创建一个redis-cluster环境

#初始化顺序
## 1.修改redis-cluster.tmpl中的cluster-announce-ip 为本机ip (requirepass 和 masterauth 为设置的密码）
## 2.执行./redis-cluster-config.sh  (chmod -R 777 redis-cluster-config.sh) 生成配置文件和目录
## 3.docker-compose up -d启动6个redis服务（ 可通过docker ps 查看）
## 4.建立cluster集群: docker exec -it redis7001 redis-cli -p 7001 -a 123456 --cluster create 10.100.11.36:7001 10.100.11.36:7002 10.100.11.36:7003 10.100.11.36:7004 10.100.11.36:7005 10.100.11.36:7006 --cluster-replicas 1
## 5.检查redis集群是否成功：(先登录到redis-7005的客户端 然后执行命名set name admin, 由于name会被分配到slot=5798在7002节点上（5461-10922），因此会重定向到7002中（Redirected to slot [5798] located at 10.100.11.36:7002）)

`docker exec -it redis7001 redis-cli -h 10.100.11.36 -p 7005 -a 123456 -c
 Warning: Using a password with '-a' or '-u' option on the command line interface may not be safe.
 10.100.11.36:7005> set name admin
 -> Redirected to slot [5798] located at 10.100.11.36:7002
 OK
 10.100.11.36:7002> cluster nodes
 0e7e0b2738e64dd3f5f5491398cad7b85770bb8e 10.100.11.36:7006@17006 slave bb64be73077c56cf22e5356e7a6c15b0f11d3dfa 0 1596611245000 6 connected
 2c7801b5608edefa40f380f5323f5d43bc508942 10.100.11.36:7005@17005 slave 14a640cf9cfb847946ce0ae5a4f25b303539c2f0 0 1596611245000 5 connected
 bb64be73077c56cf22e5356e7a6c15b0f11d3dfa 10.100.11.36:7001@17001 master - 0 1596611244093 1 connected 0-5460
 14a640cf9cfb847946ce0ae5a4f25b303539c2f0 10.100.11.36:7003@17003 master - 0 1596611245095 3 connected 10923-16383
 9be1466586e3bb57151e0e772e540d90453d92ff 10.100.11.36:7002@17002 myself,master - 0 1596611244000 2 connected 5461-10922
 7f8230915e05d43cb9c3324ee72125541ab3e363 10.100.11.36:7004@17004 slave 9be1466586e3bb57151e0e772e540d90453d92ff 0 1596611246100 4 connected
 10.100.11.36:7002> 
`