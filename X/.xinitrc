#/bin/sh

xset -b
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap &

# Keyring, GPG, and SSH
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
gpg-agent --enable-ssh-support -s --daemon &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK GNOME_KEYRING_CONTROL GNOME_KEYRING_PID

# compton -bcCGfi .8 --inactive-dim .5 --vsync drm &
# compton -bi .8 --inactive-dim .6 &

start-pulseaudio-x11 &
dunst &
nm-applet &
numlockx on &
kalu &

# Useful utilities
remmina --icon & 
blueman-applet &

# Auto hide mouse cursor when idle, or when typing
unclutter -idle 3 -jitter 5 -noevents -root &
xbanish &

# Setup my environment
~/.i3/wallpaper.sh &
xautolock -time 5 -notify 30 -locker i3lock &

# And finally start i3
exec i3
