# Load other bash files
for DOTFILE in `find ./`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
