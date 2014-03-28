# antigen config {{{
if [ -f ~/.zsh/antigen.zsh ]; then
  export ADOTDIR=~/.zsh/.antigen
  source ~/.zsh/antigen.zsh

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


