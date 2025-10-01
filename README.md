This is a simple setup script for my zsh environment.
Feel free to use it yourself.

Just run `curl -Ss https://raw.githubusercontent.com/OneAutumnMango/zsh-configs/master/setup.sh | sh`

can optionally set `zsh` as the default shell `chsh -s /usr/bin/zsh`

### Passwordless Sudo
For passwordless sudo `starship` and `chsh` may still prompt for a password.

The workaround for this is to run:

`curl -Ss https://raw.githubusercontent.com/OneAutumnMango/zsh-configs/master/setup.sh | sudo sh`
and `sudo chsh -s /usr/bin/zsh $USER`
