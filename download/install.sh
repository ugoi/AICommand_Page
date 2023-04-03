#!/bin/bash

# Download ai_thing.sh and ai_thing.py
curl -o ~/ai_thing.sh https://ugoi.github.io/AICommand_Page/download/ai_thing.sh
curl -o ~/ai_thing.py https://ugoi.github.io/AICommand_Page/download/ai_thing.py

# Make ai_thing.sh executable
chmod +x ~/ai_thing.sh

# Make ai_thing.py executable
chmod +x ~/ai_thing.py

# Add the source command to the appropriate shell configuration file
if [[ $SHELL == *"zsh"* ]]; then
  echo "source ~/ai_thing.sh" >> ~/.zshrc
elif [[ $SHELL == *"bash"* ]]; then
  echo "source ~/ai_thing.sh" >> ~/.bashrc
else
  echo "Unsupported shell. Please add 'source ~/ai_thing.sh' to your shell configuration file manually."
fi
