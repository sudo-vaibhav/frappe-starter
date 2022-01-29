To make bench work in our local dev configuration, the following settings need to be changed in common site config file

```json
{
    "db_host": "mariadb",
    "developer_mode": true,
    "redis_cache": "redis://redis-cache:6379",
    "redis_queue": "redis://redis-queue:6379",
    "redis_socketio": "redis://redis-socketio:6379", 
}
```