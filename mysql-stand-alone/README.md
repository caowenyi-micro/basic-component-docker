# 1.配置mysql的初始用户和密码
在docker-compose 中配置了mysql用户username=root password=123456 
`environment:
             MYSQL_ROOT_PASSWORD: "123456"
# 2. 设置mysql的初始化脚本，包括设置mysql用户的哪些ip可以访问和初始化数据库和表
见init.sql
# 3.启动mysql
docker-compose up -d

# 4 测试连接
mysql -h127.0.0.1 -uroot -p123456
