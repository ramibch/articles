# ssh to a remote server

TODO: explain: _/home/user/.ssh/config_

```
Host my_remote_host_name
        User my_remote_user
        Hostname my_host_ip_or_name
        PreferredAuthentications publickey
        IdentityFile /home/user/.ssh/id_rsa_my_remote_host
```

1. Generate key in my local machine:

```shell
ssh-keygen -t rsa
```

Save that key under _/home/user/.ssh/id_rsa_my_remote_host_

2. Copy the public key _/home/user/.ssh/id_rsa_my_remote_host.pub_ and paste into the file _/home/my_remote_user/.ssh/authorized_keys_ under the remote machine.

If the `_authorized_keys_ has other keys, add the generated public key at the end of the file.

3. Connect to the remote machine

```shell
ssh my_remote_user@my_remote_host_name
```
