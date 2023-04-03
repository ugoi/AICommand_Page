#!/bin/bash

# Remove ai_thing.sh and ai_thing.py
rm -f ~/ai_thing.sh
rm -f ~/ai_thing.py

# Remove the source command from the appropriate shell configuration file
if [[ $SHELL == *"zsh"* ]]; then
  sed -i '' '/source ~\/ai_thing.sh/d' ~/.zshrc
elif [[ $SHELL == *"bash"* ]]; then
  sed -i '/source ~\/ai_thing.sh/d' ~/.bashrc
else
  echo "Unsupported shell. Please remove 'source ~/ai_thing.sh' from your shell configuration file manually."
fi

echo "AICommand uninstalled successfully."
