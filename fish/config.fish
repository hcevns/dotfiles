. ~/.config/fish/aliases.fish

set -g fish_greeting # remove greeting

if status is-interactive && not functions -q fisher
  curl -sL git.io/fisher | source && fisher update
end
