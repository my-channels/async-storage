#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts

echo "==> Installing Yarn package manager"
rm -rf ~/.yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
# Yarn configurations
export PATH="$HOME/.yarn/bin:$PATH"
yarn config set prefix ~/.yarn -g
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
alias nodejs=node
pwd
yarn install 