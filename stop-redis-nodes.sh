redis-cli -h localhost -p 7001 shutdown; echo 7001 Stopped;
redis-cli -h localhost -p 17001 shutdown; echo 17001 sentintel Stopped;
redis-cli -h localhost -p 7003 shutdown; echo 7003 Stopped;
redis-cli -h localhost -p 17003 shutdown; echo 17003 sentintel Stopped;
redis-cli -h localhost -p 7004 shutdown; echo 7004 Stopped;
redis-cli -h localhost -p 17004 shutdown; echo 17004 sentintel Stopped;
