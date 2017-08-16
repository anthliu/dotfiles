Credit: https://news.ycombinator.com/item?id=11070797

git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no

config status
config add .vimrc
config commit -m "Add vimrc"

Cloning:

git clone --separate-git-dir=~/.myconf /path/to/repo ~
