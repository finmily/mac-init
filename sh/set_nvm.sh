#!/bin/bash

mkdir ~/.nvm
echo 'export NVM_DIR=~/.nvm' >> ~/.zshrc
echo '. $(brew --prefix nvm)/nvm.sh' >> ~/.zshrc
