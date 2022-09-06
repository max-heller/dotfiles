# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Load plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_DEFAULT_COMMAND='rg --hidden --files'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH
export PATH=$PATH:/home/max/.cargo/bin:/home/max/.local/bin:/home/max/.gem/ruby/2.7.0/bin

# opam configuration
test -r /home/max/.opam/opam-init/init.zsh && . /home/max/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Starship prompt
eval "$(starship init zsh)"

# Brown SSHFS
BROWNCS_MOUNTPOINT=~/brown-cs
BROWNCS_LOGIN=mheller6
myfuse() {
    printf "... attempting to mount brown filesystem for user ${BROWNCS_LOGIN} on local file ${BROWNCS_MOUNTPOINT}\n"
    mkdir -p ${BROWNCS_MOUNTPOINT}
    sshfs "${BROWNCS_LOGIN}@ssh.cs.brown.edu:/home/${BROWNCS_LOGIN}" "${BROWNCS_MOUNTPOINT}"
}
fixfuse() {
    printf "... attempting to unmount brown filesystem from local file ${BROWNCS_MOUNTPOINT}\n"
    fusermount -u "${BROWNCS_MOUNTPOINT}"
    rmdir "${BROWNCS_MOUNTPOINT}"
}
