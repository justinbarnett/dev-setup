# copy vundle settings to vimrc.bundles.local
cp .vimrc.bundles.local ~/.vimrc.bundles.local

# Download vim + plugins (maximum-awesome) for mac or ubuntu
if [[ "$OSTYPE" == "darwin"* ]]; then
    git clone https://github.com/square/maximum-awesome.git &&
    cd ./maximum-awesome &&
    rake &&
    cd ..
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    git clone https://github.com/justaparth/maximum-awesome-linux.git &&
    cd ./maximum-awesome-linux &&
    rake &&
    cd ..
fi

# add monokai color scheme to vim
if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/colors ]; then
    mkdir ~/.vim/colors
fi

cp monokai.vim ~/.vim/colors/

# copy vimrc.local settings
cp .vimrc.local ~/.vimrc.local

# add bin path for vim executable used by maximum-awesome
echo 'export PATH="~/bin:$PATH"' >> ~/.bashrc
