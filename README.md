# Neovim Server

<h1 align="center">🛰 nvim-server</h1>
<p align="center">
    <em>A containerized IDE-like text editor that runs on a web server</em>
</p>

<p align="center">
    <a href="https://github.com/wfxr/code-minimap/actions?query=workflow%3ACICD">
        <img src="https://github.com/wfxr/code-minimap/workflows/CICD/badge.svg" alt="CICD"/>
    </a>
    <img src="https://img.shields.io/github/license/yqlbu/neovim-server" alt="License"/>
    <a href="https://crates.io/crates/code-minimap">
        <img src="https://img.shields.io/crates/v/code-minimap.svg?colorB=319e8c" alt="Version">
    </a>
    <a href="https://github.com/wfxr/code-minimap/releases">
        <img src="https://img.shields.io/badge/platform-%20Linux%20|%20OSX%20|%20ARM-orange.svg" alt="Platform"/>
    </a>
</p>

This tool is for running neovim remotely, and continuing the developing process at 🚀 speed.
You can use it to implement an IDE-like web-based terminal text editor.

### Features

- Portable and light weight
- Easy to deploy
- Versatile and customizable
- Containerized
- Run on a web browser

## Prerequisites

- Driod Sans Mono Nerd Font is the default font of the container. To use other fonts, please find the instructions on the [Nerd Font](https://github.com/ryanoasis/nerd-fonts) repository.

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
