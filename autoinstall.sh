#!/bin/sh
SCRIPT_PATH="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR="$SCRIPT_PATH/old_config"

sudo apt install zsh vim tmux terminator curl git htop ipython3 -y

# if ! [ "$SHELL" = "/usr/bin/zsh" ]; then
    # chsh -s $(which zsh)
# fi

# Zálohy
mkdir $BACKUP_DIR
cd ~/
mv .vimrc .bashrc .zshrc .tmux.conf .tmuxstatusbar .gitconfig\
    $BACKUP_DIR/  2> /dev/null
mv ~/.config/terminator/* $BACKUPDIR/terminator/ 2> /dev/null
mv ~/.vim/* $BACKUP_DIR/.vim/   2> /dev/null

# Presun nových skriptov
cp $SCRIPT_PATH/.vim/*  ~/.vim/
cp $SCRIPT_PATH/.vimrc $SCRIPT_PATH/.bashrc $SCRIPT_PATH/.zshrc \
   $SCRIPT_PATH/.tmux.conf $SCRIPT_PATH/.tmuxstatusbar $SCRIPT_PATH/.gitconfig \
   ~/
cp $SCRIPT_PATH/terminator/* ~/.config/terminator/

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
mv $SCRIPT_PATH/agnoster.zsh-theme ~/.oh-my-zsh/themes/

