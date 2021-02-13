#!/usr/bin/env bash
# Utilities, i3 wm and dev tools
dnf -y groupinstall "C Development Tools and Libraries"
dnf -y install dnf-plugins-core
dnf -y copr enable heliocastro/hack-fonts
dnf -y install   https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -y install   https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y update
dnf -y install lpf-spotify-client
dnf -y install \
	adobe-source-code-pro-fonts \
	adobe-source-han-mono-fonts \
  acpi \
	alacritty \
  cmake \
  ctags \
	docker-compose \
	docker \
	dunst \
	exa \
	feh \
	ffmpeg \
	fontawesome-fonts \
  git \
  gitflow \
	gpick \
  i3 \
  i3lock \
	i3blocks \
  jq \
	keybase \
	liveusb-creator \
	motion \
  mr \
	neovim \
  ngrep \
  openssl-devel \
	openvpn \
	picom \
	procps \
	python3-neovim \
  python-pip \
	rofi \
  ruby \
  sway \
	the_silver_searcher \
  tmux \
  tree \
  weechat \
  vcsh \
  xbacklight \
  xdotool \
	youtube-dl
pip install -U kb-manager
