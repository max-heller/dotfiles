dotfiles=$(dirname "$(realpath $0)")

# Packages
yay
yay -S --needed --norebuild - < packages.txt

# Link dotfiles
ln -s -f $dotfiles/.config ~
ln -s -f $dotfiles/.fehbg ~
ln -s -f $dotfiles/.gitconfig ~
mkdir -p ~/.ssh && ln -s -f $dotfiles/ssh/config ~/.ssh
ln -s -f $dotfiles/.zshrc ~

# Link pacman hooks
sudo mkdir -p /etc/pacman.d/hooks
sudo ln -s -f $dotfiles/pacman-install.hook /etc/pacman.d/hooks
sudo ln -s -f $dotfiles/pacman-remove.hook /etc/pacman.d/hooks

# Set ZSH as shell
chsh -s /usr/bin/zsh

# Enable services
systemctl --user enable redshift
