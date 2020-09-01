nginx['enable'] = true
nginx['redirect_http_to_https'] = false
registry_nginx['redirect_http_to_https'] = false
puma['enable'] = true
# TODO: Fix the below!
# gitlab_rails['internal_api_url'] = 'http://git.example.com'
letsencrypt['enable'] = false
redis['enable'] = true
postgresql['enable'] = true
sidekiq['enable'] = true
gitaly['enable'] = true
gitlab_workhorse['enable'] = true
grafana['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
gitlab_exporter['enable'] = false
postgres_exporter['enable'] = false
redis_exporter['enable'] = false
node_exporter['enable'] = false
gitlab_exporter['enable'] = false

# external_url 'http://{{ gitlab_container_hostname }}'
gitlab_rails['gitlab_shell_ssh_port'] = '{{ gitlab_shell_ssh_port }}'
