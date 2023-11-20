# TERMINAL-CONFIG

```bash
ln -s ~/.terminal-config/.bashrc .bashrc;
ln -s ~/.terminal-config/.rc.conf  ~/.config/ranger/rc.conf;
mkdir ~/.config/nvim; touch ~/.config/nvim/init.vim;
echo "set runtimepath^=~/.terminal-config/.vim runtimepath+=~/.terminal-config/.vim/after" >> ~/.config/nvim/init.vim;
echo "let &packpath=&runtimepath" >> ~/.config/nvim/init.vim;
echo "source ~/.terminal-config/.vimrc" >> ~/.config/nvim/init.vim;
ln -s ~/.terminal-config/.gitconfig ~/.gitconfig;
ln -s ~/.terminal-config/.tmux.conf ~/.tmux.conf;
```
