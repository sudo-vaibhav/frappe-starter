cd /workspace/
bench init --skip-redis-config-generation --frappe-branch version-13 frappe-bench
rm /workspace/frappe-bench/sites/common_site_config.json
touch /workspace/frappe-bench/sites/common_site_config.json
echo '{
 "background_workers": 1,
 "file_watcher_port": 6787,
 "frappe_user": "frappe",
 "gunicorn_workers": 33,
 "live_reload": true,
 "rebase_on_pull": false,
 "db_host": "mariadb",
 "redis_cache": "redis://redis-cache:6379",
 "redis_queue": "redis://redis-queue:6379",
 "redis_socketio": "redis://redis-socketio:6379", 
 "restart_supervisor_on_update": false,
 "restart_systemd_on_update": false,
 "serve_default_site": true,
 "shallow_clone": true,
 "socketio_port": 9000,
 "use_redis_auth": false,
 "webserver_port": 8000
}' >> /workspace/frappe-bench/sites/common_site_config.json