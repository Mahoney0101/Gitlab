prometheus['enable'] = false
node_exporter['listen_address'] = '0.0.0.0:9100'
gitlab_workhorse['prometheus_listen_addr'] = "0.0.0.0:9229"

gitlab_monitor['enable'] = true
gitlab_monitor['listen_address'] = '0.0.0.0'

# Rails nodes
gitlab_exporter['listen_address'] = '0.0.0.0'
gitlab_exporter['listen_port'] = '9168'

# Sidekiq nodes
sidekiq['listen_address'] = '0.0.0.0'

# Redis nodes
redis_exporter['listen_address'] = '0.0.0.0:9121'

# PostgreSQL nodes
postgres_exporter['listen_address'] = '0.0.0.0:9187'

# Gitaly nodes
gitaly['prometheus_listen_addr'] = "0.0.0.0:9236"

gitlab_rails['monitoring_whitelist'] = ['0.0.0.0/0']
gitlab_rails['prometheus_address'] = '0.0.0.0:9090'

nginx['status']['options'] = {
      "server_tokens" => "off",
      "access_log" => "off",
      "allow" => "0.0.0.0",
      "deny" => "all",
}