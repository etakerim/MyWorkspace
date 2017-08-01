#!/bin/bash

SCRIPT_PATH="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR="$SCRIPT_PATH/backup_Config"

#sudo apt install zsh vim tmux terminator curl git htop -y

# Zálohy
mkdir $BACKUP_DIR
cd ~/
mv .vimrc .bashrc .zshrc .tmux.conf $BACKUP_DIR/
mv ~/.config/terminator $BACKUPDIR/
mv ~/.vim $BACKUP_DIR/

# Presun nových skriptov
mv $SCRIPT_PATH/.vim  ~/.vim
mv $SCRIPT_PATH/.vimrc $SCRIPT_PATH/.bashrc $SCRIPT_PATH/.zshrc ~/
mv $SCRIPT_PATH/.tmux.conf ~/
mv  $SCRIPT_PATH/terminator ~/.config/terminator

# Inštalácia vim pluginov
cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tmhedberg/SimpylFold
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/edkolev/tmuxline.vim
git clone https://github.com/nvie/vim-flake8
git clone https://github.com/vim-scripts/a.vim
git clone https://github.com/ntpeters/vim-better-whitespace

# Inštalácia zsh pluginov
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
