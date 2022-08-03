#!/usr/bin/sh

dir="$HOME/.config/polybar"

launch_bar() {
  killall polybar
  while pgrep polybar; do killall polybar; done
  polybar -q main -c "$dir/config.ini" --log=info
}

launch_bar
