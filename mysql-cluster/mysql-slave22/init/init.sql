use mysql;

change master to master_host='192.18.0.5', master_user='micro_user', master_password='123456', master_port=3306, master_log_file='mysql-bin.000003', master_log_pos= 155, master_connect_retry=30;
start slave;


