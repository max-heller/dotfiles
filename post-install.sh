dotfiles=$(dirname "$(realpath $0)")

# Packages
yay
yay -S --needed --norebuild bibata-cursor-theme code cowsay discord dunst feh firefox fzf gdb go google-chrome gtk-theme-numix-solarized insync kitty lightdm lightdm-slick-greeter lightdm-settings lxappearance mons npm otf-fira-mono-italic-git oh-my-zsh-git playerctl polybar racket redshift rofi rofi-calc rofi-dmenu rustup slack-desktop spin spotify-tui texlive-most thunar tree ttf-fira-code ttf-font-awesome zathura zathura-pdf-poppler zoom zsh zsh-syntax-highlighting zulip-desktop-bin

# VSCode Extensions
code --install-extension andys8.jest-snippets
code --install-extension bierner.color-info
code --install-extension bierner.markdown-checkbox
code --install-extension bungcip.better-toml
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension eamodio.gitlens
code --install-extension formulahendry.code-runner
code --install-extension GrapeCity.gc-excelviewer
code --install-extension Gruntfuggly.todo-tree
code --install-extension hdg.live-html-previewer
code --install-extension HookyQR.minify
code --install-extension James-Yu.latex-workshop
code --install-extension karyfoundation.racket
code --install-extension Kelvin.vscode-sshfs
code --install-extension mikestead.dotenv
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.Go
code --install-extension naumovs.color-highlight
code --install-extension Orta.vscode-jest
code --install-extension PKief.markdown-checkbox
code --install-extension pmneo.tsimporter
code --install-extension polypus74.trusty-rusty-snippets
code --install-extension rbbit.typescript-hero
code --install-extension rust-lang.rust
code --install-extension SethPoulsen.vscode-language-pyret
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension tht13.html-preview-vscode
code --install-extension vscodevim.vim
code --install-extension wayou.vscode-todo-highlight

# Install GRUB theme and update GRUB
wget -O - https://github.com/shvchk/poly-dark/raw/master/install.sh | bash
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Link dotfiles
$dotfiles/link.sh

# Set ZSH as shell
chsh -s /usr/bin/zsh

# Enable services
systemctl --user enable redshift
