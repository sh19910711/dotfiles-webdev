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


