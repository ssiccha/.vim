### Install neovim from package
Neovim has been added to a Ubuntu PPA. For more information check
[neovim/neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu).
```sh
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
```

Create a symlink to our config-folder for Neovim:
```sh
    ln -s ~/.vim ~/.config/nvim
```

### Install neovim from source
Check the [build prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites),
e.g. recent verions of CMake and (Clang or GCC)
```sh
    sudo apt-get install ninja-build libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
```

Build and install Neovim:
```sh
    git clone https://github.com/neovim/neovim ~/.local/opt/neovim
    cd ~/.local/opt/neovim
    make
    sudo make install
```

Make `nvim` binary available via `PATH`:
```sh
    ln -s ~/.local/opt/neovim/bin/nvim ~/.local/bin/nvim
    echo 'export PATH=$PATH:$HOME/.local/bin/' >> ~/.bashrc
```
Set `TERM` for neovim:
```sh
    echo 'export TERM="xterm-256color"' >> ~/.bashrc
```
If you like, you can set up an alias for `nvim`:
```sh
    echo "alias 'vi'='nvim '" >> ~/.bashrc
```
Now reload the bash-settings:
```sh
    source ~/.bashrc
```

And create a symlink to our config-folder for Neovim:
```sh
    ln -s ~/.vim ~/.config/nvim
```

### Make Python available in Neovim
Test whether Neovim is able to use Python:
```sh
    nvim
    :python print "hello"
```

If this does not work, you can install the Python package `neovim` manually.
For more information you can check the Neovim documentation on
[Python in Neovim](https://neovim.io/doc/user/nvim_python.html).
```sh
    sudo apt-get install python-dev python-pip
    sudo pip2 install neovim
```

Typically `/usr/bin` contains a symbolic link `python2` to the latest Python 2 version.
If there is no such symlink, you have to change the path in `vimrc:line19`.
```vim
    let g:python_host_prog = '/path/to/your/python2'
```
