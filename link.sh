dotfiles=$(dirname "$(realpath $0)")

ln -s -f $dotfiles/.config ~
ln -s -f $dotfiles/.fehbg ~
ln -s -f $dotfiles/.gitconfig ~
mkdir -p ~/.ssh && ln -s -f $dotfiles/ssh/config ~/.ssh
ln -s -f $dotfiles/.zshrc ~
