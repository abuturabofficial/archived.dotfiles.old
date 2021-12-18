# Setting Neovim as a Pager

export EDITOR='nvim'
export MANPAGER='nvim +Man!'
alias less=$PAGER
alias zless=$PAGER

# Setting aliases for Neovim

alias vim='nvim'


# Setting aliases for config files quick access

alias init.vim='nvim ~/.config/nvim/init.vim'
alias i3conf='nvim ~/.config/i3/config'
alias i3blocks='nvim ~/.config/i3/i3blocks.conf'
alias rm='rm -i'
# Setting aliases for 'exa' utility (a drop-in replacement for ls)

alias ls='exa'
alias ll='exa -lh'   # show long listing of all except ".."
alias lah='exa -lah' # show long listing but no hidden dotfiles except "."
alias ..='cd ..'
alias cat='bat'

