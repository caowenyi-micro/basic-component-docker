use mysql;
create user 'micro_user'@'%' identified with mysql_native_password by '123456';
grant REPLICATION SLAVE on *.* to 'micro_user'@'%';
alter user 'root'@'%' identified with mysql_native_password by '123456';
flush privileges;

