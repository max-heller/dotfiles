dotfiles=$(dirname "$(realpath $0)")

# Packages
yay
yay -S --needed --norebuild bibata-cursor-theme discord dunst feh fzf gdb google-chrome gtk-theme-numix-solarized insync jre-openjdk kitty lightdm lightdm-slick-greeter lightdm-settings lxappearance lxqt-policykit mons npm neovim otf-fira-mono-italic-git oh-my-zsh-git playerctl polybar python python-pip redshift rofi rofi-calc rofi-dmenu rustup slack-desktop spotify-tui texlive-most the_silver_surfer thunar tree tslint ttf-fira-code ttf-font-awesome typescript zathura zathura-pdf-poppler zoom zsh zsh-syntax-highlighting

# Link dotfiles
$dotfiles/link.sh

# Set ZSH as shell
chsh -s /usr/bin/zsh

# Enable services
systemctl --user enable redshift

pip3 install --user --upgrade pynvim
