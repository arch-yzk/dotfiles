source $HOME/.common_profile
source $HOME/.zshrc.define

# complement
autoload -Uz compinit && compinit -u;
setopt correct
setopt nolistbeep
setopt auto_cd
setopt magic_equal_subst
setopt auto_pushd
setopt pushd_ignore_dups

# prompt
autoload -Uz colors && colors;
PROMPT="
%{$fg[magenta]%}%d %{$reset_color%}
%{$fg[red]%}>%{$fg[magenta]%}>%{$fg[yellow]%}>%{$fg[cyan]%}> %{$reset_color%}"

# history
export HISTFILE=$HOME/.common_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY
