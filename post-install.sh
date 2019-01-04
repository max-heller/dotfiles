# Packages
yay
yay -Rns awesome-terminal-fonts dmenu grub2-theme-antergos i3status kalu mate-calc notify-osd numix-frost-themes numix-icon-theme numix-icon-theme-square pcmanfm xfburn
yay -S --needed adobe-source-code-pro-fonts bibata-cursor-theme code discord dunst gdb google-chrome gtk-theme-numix-solarized insync ncurses5-compat-libs oh-my-zsh-git papirus-icon-theme playerctl polybar racket rofi rofi-calc rofi-dmenu slack-desktop spotify texlive-bibtexextra texlive-core texlive-fontsextra texlive-formatsextra texlive-games texlive-humanities texlive-latexextra texlive-music texlive-pictures texlive-pstricks texlive-publishers texlive-science thunar ttf-font-awesome valgrind zsh zsh-syntax-highlighting

# VSCode Extensions
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension eamodio.gitlens
code --install-extension formulahendry.code-runner
code --install-extension James-Yu.latex-workshop
code --install-extension karyfoundation.racket
code --install-extension Kelvin.vscode-sshfs
code --install-extension mikestead.dotenv
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension naumovs.color-highlight
code --install-extension streetsidesoftware.code-spell-checker

# Load dotfiles
git clone https://github.com/mxheller/dotfiles.git ~/dotfiles

# Install GRUB theme and update GRUB
wget -O - https://github.com/shvchk/poly-dark/raw/master/install.sh | bash
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Link dotfiles
./link.sh

# Copy chrome shortcuts
cp $dotfiles/applications/* ~/.local/share/applications/

# Set ZSH as shell
chsh -s /usr/bin/zsh
