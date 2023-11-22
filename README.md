# TERMINAL-CONFIG

### SYMBOLIC LINKs
```bash
ln -s ~/.terminal-config/.bashrc .bashrc;
ln -s ~/.terminal-config/.rc.conf  ~/.config/ranger/rc.conf;
ln -s ~/.terminal-config/.gitconfig ~/.gitconfig;
ln -s ~/.terminal-config/.tmux.conf ~/.tmux.conf;
```

### NEOVIM CONFIG
```bash
mkdir ~/.config/nvim; touch ~/.config/nvim/init.vim;
sudo echo "set runtimepath^=~/.terminal-config/.vim runtimepath+=~/.terminal-config/.vim/after" >> ~/.config/nvim/init.vim;
sudo echo "let &packpath=&runtimepath" >> ~/.config/nvim/init.vim;
sudo echo "source ~/.terminal-config/.vimrc" >> ~/.config/nvim/init.vim;
```
