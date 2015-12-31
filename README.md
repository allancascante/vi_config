# vi_config
My Configuration for VI

cd ~
git clone http://github.com/allancascante/vi_config.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
