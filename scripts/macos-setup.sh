#!/bin/bash
# script to do basic setup for macos-it
# nb. the script assumes that you already have `git@github.com:glitchy/customs.git` cloned down to ~/Source/

# replace all placeholders with your user
user=$1
sed -i 's/{your_user}/$user/g' ~/Source/customs/nvim/configs/lsp/init.lua

##### TERMINAL #####

# brew (package manager)
echo '[1/6]: downloading brew..'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '[COMPLETE!]'

##### LANGUAGES #####

# rust
echo '[2/6]: downloading rust..'
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo '[COMPLETE!]'

# elixir/erlang/asdf
echo '[3/6]: downloading elixir..'
brew install asdf
asdf install elixir latest
asdf global elixir latest
echo '[COMPLETE!]'

# neovim elixir-ls (extra) setup
echo '[4/6]: updating elixir-ls configuration for neovim..'
cd ~/Source && git clone git@github.com:elixir-lsp/elixir-ls.git
cd ~/Source/elixir-ls && mix deps.get \
  && MIX_ENV=prod mix compile \
  && mkdir release \
  && MIX_ENV=prod mix elixir_ls.release2 -o release
chmod +x ~/Source/elixir-ls/release/language_server.sh
echo '[COMPLETE!]'

##### EDITOR #####

# neovim [NvChad]
echo '[5/6]: downloading neovim (NvChad)..'
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
echo '[COMPLETE!]'
echo '[6/6]: setting up neovim (NvChad)..'
cd ~/Source/customs/nvim \
  && cp chadrc.lua globals.lua highlights.lua init.lua mappings.lua plugins.lua ~/.config/nvim/lua/custom/ \
  && cp -r configs ~/.config/nvim/lua/custom/
echo '[COMPLETE!]'
sleep 1

# Use Installers
echo '\nATTENTION!: VSCode intsall:'
echo 'Download VSCode at https://code.visualstudio.com/download\n'
echo 'ATTENTION!: iTerm2 install:'
echo 'Download iTerm2 at https://iterm2.com/downloads.html\n'
sleep 1

# finish off nvim install with answering prompts
nvim
