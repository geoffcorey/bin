#!/usr/bin/env bash
# Utilities, i3 wm and dev tools
dnf -y groupinstall "C Development Tools and Libraries"
dnf -y install \
  acpi \
  conky \
  git \
  cmake \
  ctags \
  jq \
  mr \
  ngrep \
  openssl-devel \
  python-devel \
  python-pip \
  python2-greenlet-devel \
  ruby \
  sway \
  tmux \
  weechat \
  vcsh \
  xbacklight \
  xdotool \
  tree
# Setup Sway(i3)
dnf -y install dnf-plugins-core
dnf -y copr enable dperson/neovim
cd /usr/share/xsessions
if [ ! -F sway.desktop ]; then
  ln -s ../wayland-sessions/sway.desktop sway.desktop
fi
pip install neovim

