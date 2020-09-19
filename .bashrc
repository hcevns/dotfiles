if command -v fish; then
  echo "Using Fish shell, override with bash -c \"command\""
  exec fish
fi