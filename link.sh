dotfiles=$(dirname "$(realpath $0)")

ln -s -f $dotfiles/alacritty ~/.config
rm -r ~/.config/dunst
ln -s -f $dotfiles/dunst ~/.config
ln -s -f $dotfiles/git/.gitconfig ~
rm -r ~/.config/i3
ln -s -f $dotfiles/i3 ~/.config
ln -s -f $dotfiles/nvim ~/.config
rm -rf ~/.config/polybar
mkdir ~/.config/polybar
ln -s -f $dotfiles/polybar/config ~/.config/polybar
mkdir -p ~/.config/redshift
ln -s -f $dotfiles/redshift/redshift.conf ~/.config/redshift
rm -r ~/.config/rofi
ln -s -f $dotfiles/rofi ~/.config
mkdir -p ~/.ssh
ln -s -f $dotfiles/ssh/config ~/.ssh
ln -s -f $dotfiles/zathura ~/.config
ln -s -f $dotfiles/zsh/.zshrc ~
