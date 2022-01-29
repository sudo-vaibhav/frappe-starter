# frappe-starter

A starter template for building and version controlling your frappe project


To make bench work in our local dev configuration, you need to initalise a frappe-bench directory and then add the following settings need to be changed in common site config file

```json
{
    "db_host": "mariadb",
    "developer_mode": true,
    "redis_cache": "redis://redis-cache:6379",
    "redis_queue": "redis://redis-queue:6379",
    "redis_socketio": "redis://redis-socketio:6379", 
}
```

All of this is included in the bootstrap script which just needs to be run in order to set stuff up inside devcontainer.