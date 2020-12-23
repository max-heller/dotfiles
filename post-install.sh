dotfiles=$(dirname "$(realpath $0)")

# Packages
yay
yay -S --needed --norebuild - < packages.txt

# Link dotfiles
$dotfiles/link.sh

# Set ZSH as shell
chsh -s /usr/bin/zsh

# Enable services
systemctl --user enable redshift

pip3 install --user --upgrade pynvim
