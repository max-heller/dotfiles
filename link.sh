dotfiles=$(dirname "$(realpath $0)")

ln -s -f $dotfiles/"Code - OSS"/settings.json ~/.config/"Code - OSS"/User
ln -s -f $dotfiles/compton/compton.conf ~/.config
rm -r ~/.config/dunst
ln -s -f $dotfiles/dunst ~/.config
ln -s -f $dotfiles/git/.gitconfig ~
rm -r ~/.config/i3
ln -s -f $dotfiles/i3 ~/.config
mkdir ~/.config/polybar
ln -s -f $dotfiles/polybar/config ~/.config/polybar
rm -r ~/.config/rofi
ln -s -f $dotfiles/rofi ~/.config
mkdir ~/.ssh
ln -s -f $dotfiles/ssh/config ~/.ssh
mkdir ~/.config/termite
ln -s -f $dotfiles/termite/config ~/.config/termite
ln -s -f $dotfiles/vim/.vimrc ~
ln -s -f $dotfiles/zsh/.zshrc ~
