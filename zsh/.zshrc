fpath+=(
  "$HOME/.zsh/plugins/pure"
)

autoload -U promptinit

promptinit

prompt pure

source "$HOME/.zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh"