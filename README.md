# neovim-server

## Usage

```bash
docker run -d \
  --name nvim-server \
  -p 6080:3000 \
  -e TZ=Asia/Shanghai \
  -e USER=<USER> \
  -e SECRET=<PASSWORD> \
  hikariai/nvim-server:latest
```

visit `http://localhost:6080/wetty`

## Font Installation

##### Linux

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

##### macOS

```bash
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```
