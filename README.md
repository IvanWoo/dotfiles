## common tasks

```sh
./brew/main.sh
./fish/main.fish
./pipx/main.sh
./bin/dotfiles
```

## neovim

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

install the packer.nvim plugin

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```sh
nvim config/nvim/lua/yifan/packer.lua
```

sync all packages

```vim
:so %
:PackerSync
```
