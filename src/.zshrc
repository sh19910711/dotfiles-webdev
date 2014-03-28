# antigen config {{{
if [ -f ~/.zsh.d/antigen.zsh ]; then
  export ADOTDIR=~/.zsh/.antigen
  source ~/.zsh.d/antigen.zsh

  antigen-use oh-my-zsh

  # Version Control Systems {{{
  antigen-bundles <<END
  git
  git-flow
  mercurial
END
# }}}

  # Ruby {{{
  antigen-bundles <<END
  ruby
  bundler
  gem
  rbenv
END
# }}}

  # zsh {{{
  antigen-bundles <<END
  history
  autojump
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions
END
# }}}

  # Go {{{
  antigen-bundles <<END
  golang
END
# }}}

  # Node.js {{{
  antigen-bundles <<END
  npm
  node
END
# }}}

  # Python {{{
  antigen-bundles <<END
  python
END
# }}}

  antigen-apply
fi
# }}}

# 補完 {{{
autoload -Uz compinit # 補完機能を有効にする
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # 大文字と小文字を区別しない
# }}}

# 履歴 {{{
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000
setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history
# }}}

# 設定 {{{
setopt no_beep # ビープ音を鳴らさないようにする
setopt auto_pushd # ディレクトリ移動時にスタックにプッシュ
setopt correct # コマンドのスペルを訂正する
setopt auto_menu # 補完候補をリスト表示
setopt auto_list # 補完候補を順に表示
setopt list_packed # 補完候補をできるだけ詰めて表示する
setopt list_types # 補完候補にファイルの種類を表示する
setopt extended_glob # グロブを拡張する
unsetopt caseglob # グロブで大文字と小文字を区別しない
# }}}

# Aliases {{{
alias vim="vim -p"
alias gvim="gvim -p"
alias tmux="tmux -2"
alias ssh="ssh -2 -C"
alias bundle="nocorrect bundle"
alias systemctl="nocorrect systemctl"
alias grunt="nocorrect grunt"
alias make="nocorrect make"
# }}}

# 検索設定 {{{
bindkey '^R' history-incremental-pattern-search-backward
# }}}

# zmv {{{
autoload -Uz zmv
alias zmv='noglob zmv -W'
# }}}

# プロンプト {{{
PROMPT="%n@%m$ "
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
RPROMPT="%1(v|%F{red}%1v%f|)(%~)"
# }}}

# キーバインド {{{
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
# }}}

