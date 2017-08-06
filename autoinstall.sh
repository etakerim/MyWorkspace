#!/bin/sh
SCRIPT_PATH="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR="~/old_config"

sudo apt install zsh vim tmux terminator curl git htop ipython3 -y

if ! [[ "$SHELL" = "/usr/bin/zsh" ]]; then
    chsh -s $(which zsh)
fi

# Zálohy
mkdir $BACKUP_DIR
cd ~/
mv .vimrc .bashrc .zshrc .tmux.conf .tmuxstatusbar \
    $BACKUP_DIR/  2> /dev/null
mv ~/.config/terminator/*(D) $BACKUPDIR/terminator/ 2> /dev/null
mv ~/.vim/*(D) $BACKUP_DIR/.vim/   2> /dev/null

# Inštalácia zsh pluginov
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Presun nových skriptov
mv $SCRIPT_PATH/.vim/*(D)  ~/.vim/
mv $SCRIPT_PATH/.vimrc $SCRIPT_PATH/.bashrc $SCRIPT_PATH/.zshrc \
   $SCRIPT_PATH/.tmux.conf $SCRIPT_PATH/.tmuxstatusbar ~/
mv $SCRIPT_PATH/terminator/*(D) ~/.config/terminator/
mv $SCRIPT_PATH/agnoster.zsh_theme ~/.oh-my-zsh/themes/

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
