#!/bin/sh
SCRIPT_PATH="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR="$SCRIPT_PATH/old_config"

sudo pacman -S konsole zsh xclip tmux neovim ctags llvm go flake8 -y

if ! [ "$SHELL" = "/usr/bin/zsh" ]; then
    chsh -s $(which zsh)
fi

# 1) Install inconsolata font manualy

# 2) Konsole
cp $SCRIPT_PATH/Shell.profile ~/.local/share/konsole/Shell.profile

# 3) Zsh
# theme from: wget https://github.com/agnoster/agnoster-zsh-theme/blob/master/agnoster.zsh-theme
# modify prompt_dir %~ to %c
cp $SCRIPT_PATH/zshrc ~/.zshrc
sudo cp $SCRIPT_PATH/prompt_agnoster_setup /usr/share/zsh/functions/Prompts/prompt_agnoster_setup

# 4) TMUX
cp $SCRIPT_PATH/tmux.conf ~/.tmux.conf
sudo pip install powerline-status
sudo cp $SCRIPT_PATH/default.json /usr/lib/python3.7/site-packages/powerline/config_files/themes/tmux/default.json

# 5) NeoVIM
cp -R $SCRIPT_PATH/.config/nvim ~/.config/
NEOVIM_PLUGIN_PATH="~/.local/share/nvim/site/pack/plugin/start"

mkdir -p $NEOVIM_PLUGIN_PATH
cd $NEOVIM_PLUGIN_PATH

git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tmhedberg/SimpylFold
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/nvie/vim-flake8
git clone https://github.com/ntpeters/vim-better-whitespace
git clone https://github.com/ycm-core/YouCompleteMe
git clone https://github.com/Chiel92/vim-autoformat
git clone https://github.com/sheerun/vim-polyglot
git clone https://github.com/elzr/vim-json
git clone https://github.com/alvan/vim-closetag
git clone https://github.com/scrooloose/nerdcommenter
git clone --recurse-submodules https://github.com/python-mode/python-mode
git clone https://github.com/fatih/vim-go
git clone https://github.com/chrisbra/csv.vim
git clone https://github.com/Xuyuanp/nerdtree-git-plugin

cd YouCompleteMe
./install.py --go-completer --clang-completer

cp $SCRIPT_PATH/gitconfig ~/.gitconfig
