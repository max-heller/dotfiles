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

# Set ZSH as shell
chsh -s /usr/bin/zsh

# Enable services
systemctl --user enable redshift
