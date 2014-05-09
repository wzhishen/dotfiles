#!/bin/sh
# Zhishen Wen
# Apr 19, 2014

repo=https://github.com/wzhishen/dotfiles.git # git repo of dotfiles
dfdir=~/dotfiles                              # dotfiles root
confdir_fish=~/.config/fish                   # config path to fish
confdir_ranger=~/.config/ranger               # config path to ranger
confdir_tmuxinator=~/.tmuxinator              # config path to tmuxinator
confdir_ohmyzsh=~/.oh-my-zsh                  # config path to oh-my-zsh
confdir_vim=~/.vim                            # config path to vim

if [ -d $dfdir ]; then
    echo "Directory $dfdir already exists, skipping."
else
    echo "Cloning dotfiles from remote server..."
    git clone $repo $dfdir
fi

echo "Deploying dotfiles..."

# dotfiles deployed @ ~
files="bashrc zshrc vimrc tmux.conf gitconfig bash_profile bash_aliases"
for file in $files; do
    ln -sf $dfdir/$file ~/.$file
done

# dotfiles deployed @ ~/.config
mkdir -p $confdir_fish
ln -sf $dfdir/fish/config.fish $confdir_fish/config.fish
mkdir -p $confdir_ranger
ln -sf $dfdir/ranger/rc.conf $confdir_ranger/rc.conf
ln -sf $dfdir/ranger/rifle.conf $confdir_ranger/rifle.conf

# tmuxinator configs
mkdir -p $confdir_tmuxinator/completion
ln -sf $dfdir/tmux/tmuxinator/jasonwen.yml $confdir_tmuxinator/jasonwen.yml
ln -sf $dfdir/tmux/tmuxinator/completion/tmuxinator.zsh $confdir_tmuxinator/completion/tmuxinator.zsh

# oh-my-zsh configs
mkdir -p $confdir_ohmyzsh/themes
ln -sf $dfdir/zsh/themes/jasonwen.zsh-theme $confdir_ohmyzsh/themes/jasonwen.zsh-theme

# vim configs
#mkdir -p $confdir_vim/colors
ln -sf $dfdir/vim/colors $confdir_vim/colors

echo "Done."
