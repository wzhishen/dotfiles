# dotfiles

These dotfiles are my `Zsh` / `tmux` / `vim`, etc. configurations and backups, mostly targeted for Cygwin on Windows platform.

## Installation

To install it, you can either invoke `curl` or `wget` from your command line.

#### via curl
```
curl -Ls https://raw.githubusercontent.com/wzhishen/dotfiles/master/tools/install.sh | sh
```

#### via wget
```
wget -q -O - https://raw.githubusercontent.com/wzhishen/dotfiles/master/tools/install.sh | sh
```

This will clone and symlink all the files and directories to their proper places.

## Known issues for Zsh with Cygwin

There might be a slight problem after installing oh-my-zsh in Cygwin on Windows.

If you've been getting wierd output upon starting Zsh:
```compdef: unknown command or service: git```

Check out the solution [here] (https://github.com/robbyrussell/oh-my-zsh/issues/630) proposed by [**@twilek**] (https://github.com/twilek)

## License
MIT
