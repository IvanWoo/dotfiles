## common tasks

```sh
./brew/main.sh
./fish/main.fish
./pipx/main.sh
./bin/dotfiles
./houdini/main.sh
```

## fish shell

add the shell to `/etc/shells`

```sh
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
```

change the default shell

```sh
chsh -s /opt/homebrew/bin/fish
```

add brew binaries in fish path

```sh
fish_add_path /opt/homebrew/bin
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

## vscode

To disable the Apple press and hold for VSCode only, run this command in a terminal:

```sh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

Then restart VSCode.

To re-enable, run this command in a terminal:

```sh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true
```

## references

- [Installing Fish shell on MacOS (Intel and M1) using brew](https://gist.github.com/gagarine/cf3f65f9be6aa0e105b184376f765262)
