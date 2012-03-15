Install Vim Configuration
=========================

cd ~
git clone http://github.com/kazimanzurrashid/vim-config.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update

Update bundle plug-ins
======================

cd ~/.vim
git submodule foreach git pull origin master
