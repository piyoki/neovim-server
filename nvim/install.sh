#!/bin/sh

set -o errexit	  #exit when command fails

install_neovim() {
  echo -e "==> [step 1] installing neovim"
  sudo pacman -S neovim --noconfirm >/dev/null 2>&1
  #yay -S neovim-git >/dev/null 2>&1
}

install_python3() {
  echo -e "==> [step 2] installing python3"
  sudo pacman -S python3 --noconfirm >/dev/null 2>&1
  which pip >/dev/null 2>&1 && echo -e "==> [step 3] pip already installed, moving forward" || install_pip
}

install_pip() {
  echo -e "==> [step 2] installing pip"
  sudo pacman -S python-pip --noconfirm >/dev/null 2>&1
}

init() {
  echo -e "==> [step 0] updating pacman"
  sudo pacman -Syyu --noconfirm >/dev/null 2>&1
  # Check if vim and nvim is installed
  echo -e "==> [step 1] checking if neovim is installed"
  [ -n "$(sudo pacman -Qs neovim)" ] && echo -e "==> [step 1] confirmed neovim is installed, moving forward" || install_neovim 
  check_python3
}

check_python3() {
  # Check if python3 is installed
  echo -e "==> [step 2] checking if python3 and pip are installed"
  # check python3
  which python3 >/dev/null 2>&1 && echo -e "==> [step 2] python3 already installed, moving forward" || install_python3
  # check pip
  which pip >/dev/null 2>&1 && echo -e "==> [step 2] pip already installed, moving forward" || install_pip
  echo -e "==> [step 2] confirmed python3 and pip are installed, moving forward"
  echo -e "==> [step 2] installing pynvim"
  pip install -U pynvim >/dev/null 2>&1
  echo -e "==> [step 3] installing dependencies for plugins" && plug_dependencies
  main
}

plug_dependencies() {
  sudo pacman -S code-minimap --noconfirm >/dev/null 2>&1
  sudo pacman -S ytop bashtop --noconfirm >/dev/null 2>&1
  sudo pacman -S lazydocker --noconfirm >/dev/null 2>&1
  sudo pacman -S ranger --noconfirm >/dev/null 2>&1
  sudo pacman -S go --noconfirm >/dev/null 2>&1
  sudo pacman -S make --noconfirm >/dev/null 2>&1
  sudo pacman -S ctags --noconfirm >/dev/null 2>&1
  sudo pacman -S nodejs yarn --noconfirm >/dev/null 2>&1
  sudo npm i -g neovim vim-node-rpc >/dev/null 2>&1
  sudo npm i -g bash-language-server --noconfirm >/dev/null 2>&1
}

nvim_setup() {
  mkdir -p $HOME/.vim
  mkdir -p $HOME/.config/nvim
  git clone https://github.com/yqlbu/dotfiles.git $HOME/dotfiles >/dev/null 2>&1
  cp -r $HOME/dotfiles/nvim/.config/nvim/* ~/.config/nvim
  echo -e "==> [Step 4 ] installing neovim plugins"
  nvim --headless +PlugInstall +qall > /dev/null 2>&1
}

main() {
  echo -e "==> [step 3] installing dependencies" && plug_dependencies
  echo -e "==> [step 4] setting up nvim" && nvim_setup
  echo -e "==> [step 5] cleaning up" && rm -rf $HOME/dotfiles
  echo -e "==> [INFO]   installation pipeline completed"
}

init
