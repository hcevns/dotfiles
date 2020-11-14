. ~/.config/fish/aliases.fish

if not functions -q fisher
  curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
  fisher update
end
