dotfiles=$(dirname "$(realpath $0)")

ln -s -f $dotfiles/"Code - OSS"/settings.json ~/.config/"Code - OSS"/User
ln -s -f $dotfiles/compton/compton.conf ~/.config
mkdir ~/.config/dunst
ln -s -f $dotfiles/dunst/dunstrc ~/.config/dunst
ln -s -f $dotfiles/git/.gitconfig ~
mkdir ~/.config/polybar
ln -s -f $dotfiles/polybar/config ~/.config/polybar
mkdir ~/.ssh
ln -s -f $dotfiles/ssh/config ~/.ssh
mkdir ~/.config/termite
ln -s -f $dotfiles/termite/config ~/.config/termite
ln -s -f $dotfiles/vim/.vimrc ~
ln -s -f $dotfiles/zsh/.zshrc ~
