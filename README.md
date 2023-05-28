# My dotfiles 

To initialize use
```
git clone --bare https://github.com/karl-stefan/dotfiles $HOME/.config/dotfiles

```

Config files currently rely on systemd support, and can be found in the linux/systemd branch. To use these do:
```
git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME/.config checkout linux/systemd

```
