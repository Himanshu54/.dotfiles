
### Generate ssh key

```bash
ssh-keygen -t ed25519 -C "email"

# setup .ssh/config

# set agent
eval "$(ssh-agent -s)"
ssh-add
```

## bash.rc

```bash
echo 'alias vim="/usr/bin/nvim"' >> ~/.bashrc
```
