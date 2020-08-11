#!/usr/bin/env bash
# Utilities, i3 wm and dev tools
dnf -y groupinstall "C Development Tools and Libraries"
dnf -y install \
	adobe-source-code-pro-fonts \
  acpi \
  conky \
  git \
  gitflow \
  cmake \
  ctags \
  jq \
  mr \
	neovim \
  ngrep \
  openssl-devel \
  python-devel \
	python3-neovim \
  python-pip \
  ruby \
  sway \
  i3 \
  i3lock \
  tmux \
  weechat \
  vcsh \
  xbacklight \
  xdotool \
  tree
