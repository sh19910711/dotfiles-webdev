for source_file in `ls ~/.zsh.d/*.zsh`; do
  source ${source_file}
done

# zmv {{{
autoload -Uz zmv
alias zmv='noglob zmv -W'
# }}}

# プロンプト {{{
PROMPT="[%n@%m %~]
$ "
## RPROMPT="(%~)"

# VCS用の設定
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
autoload -Uz colors
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{red}%1v%f|)"
# }}}

# User specific aliases and functions
export PATH=${HOME}/local/bin:${PATH}
export PATH=${HOME}/.rbenv/bin:${PATH}
eval "$(rbenv init -)"
export PATH=$HOME/.nodebrew/current/bin:$PATH

export TERM=screen-256color
