dotfiles=$(dirname "$(realpath $0)")

ln -s -f $dotfiles/"Code - OSS"/settings.json ~/.config/"Code - OSS"/User
ln -s -f $dotfiles/compton/compton.conf ~/.config
ln -s -f $dotfiles/dunst/dunstrc ~/.config/dunst
ln -s -f $dotfiles/i3/config ~/.config/i3
ln -s -f $dotfiles/i3status/config ~/.config/i3status
ln -s -f $dotfiles/rofi/config ~/.config/rofi
ln -s -f $dotfiles/rofi/solarized.rasi ~/.config/rofi
ln -s -f $dotfiles/ssh/config ~/.ssh
ln -s -f $dotfiles/termite/config ~/.config/termite
ln -s -f $dotfiles/.zshrc ~