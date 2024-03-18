# Introduction
This is my emacs configuration

## Building from source
The post over at: https://www.reddit.com/r/emacs/comments/13qlwg0/how_to_compile_emacs_properly_from_sources/
helped alot with compiling emacs from sources below is how to do so

### Install dependencies (Fedora)
```
sudo dnf builddep emacs
sudo dnf install libgccjit libgccjit-devel gtk3 gtk3-devel gtk4 gtk4-devel libtree-sitter libtree-sitter-devel \
    jansson-devel libvterm-devel webkit2gtk5.0-devel gnutls-devel

# clone latest emacs
git clone --single-branch --branch=emacs-29 git://git.sv.gnu.org/emacs.git emacs-29 && cd emacs-29
    
# Build and install (emacs-29)
./autogen.sh
./configure --without-compress-install --with-pgtk --with-native-compilation=aot \
            --with-tree-sitter --with-json --with-mailutils --with-rsvg \
            CFLAGS="-O2 -mtune=native -march=native -fomit-frame-pointer" prefix=/usr/local
make -j16
make check
sudo make install
```

### Uninstall/Upgrading (Fedora)
```
sudo make uninstall
make clean
make distclean

# at this point emacs has been removed from your system

git reset --hard HEAD # Remove all local changes to tracked files
sudo git clean -dfx # Remove all untracked files and directories
git pull

# at this point the branch is updated and ready to be built again
```

