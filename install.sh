#!bin/sh
# Install by running sudo bash insstall.sh


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Pacman installs
# i3wm
sudo pacman -Syu base base-devel xorg-server xinit i3 dmenu

# Other
sudo pacman -S  rxvt-unicode feh i3lock i3status firefox lxappearance alsa-utils stow yaourt

# yaourt installs
# yaourt asoundconf i3-gaps

# Install powerline fonts
fonts/install.sh

