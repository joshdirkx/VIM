Clone down to `~/.vim`

```clone
git clone https://github.com/joshdirkx/vim ~/.vim
```

Add submodules and upgrade

```clone
cd ~/.vim/ && git submodule init && git submodule update
```

You'll need to correctly source your `.vimrc` to the one provided in this repo. Add the following line to your `.vimrc`

```console
source ~/.vim/vimrc
```
