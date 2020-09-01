### Test deployment

```
ANSIBLE_ROLES_PATH="$(dirname $PWD)" ansible-playbook test.yml -i '<server_ip>,' -u root -e no_log=false
```

To use git+ssh configure your ssh config file
```
Host gitlab.ipdop.com
  Hostname gitlab.ipdop.com
  Port 22222 # Found in defaults/mail.yml under `gitlab_shell_ssh_port`
  PreferredAuthentications publickey
```
