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


## Further Steps

You can proceed to create a new app and then a new site, then install the app on bench using the following commands. The following commands will make an app called **new-app** and a site called **mysite.localhost**

```shell
bench new-app sample-app
bench new-site mysite.localhost --mariadb-root-password 123 --admin-password admin --no-mariadb-socket
bench --site mysite.localhost install-app sample-app
```

You can also enable developer mode for the newly created site so that new doctypes can be made and worked upon. 

```shell
bench set-config developer_mode 1
bench clear-cache
bench setup requirements --dev
```