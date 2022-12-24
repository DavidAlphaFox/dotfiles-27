#!/usr/bin/env sh
# https://github.com/shvedes/dotfiles

# main applications
pgerp -x easyeffects   2> /dev/null || easyeffects  --gapplication-service &
# pgerp -x redshift      2> /dev/null || redshift     -P -O 4500 & 
pgerp -x polybar       2> /dev/null || polybar      -q -r -c $HOME/.config/polybar/bars/main.ini &
pgerp -x dunst         2> /dev/null || dunst        &
pgerp -x sxhkd         2> /dev/null || sxhkd        &
pgrep -x greenclip     2> /dev/null || greenclip daemon &
pgrep -x picom         2> /dev/null || picom --experimental-backends &

xrandr                --output eDP --mode 1920x1200
feh                   --bg-fill ~/.wallpapers/12.png & 
# brightnessctl         -q s 4
redshift              -P -O 4500 &
betterlockscreen      -q -u  ~/.wallpapers/12.png
xsetroot              -cursor_name left_ptr &

# start autolock session script
$HOME/.local/bin/scripts/autolock &

# start battery notification scripts
$HOME/.local/bin/notifications/battery_status &
$HOME/.local/bin/notifications/charging_notify &

# mouse / touchpad section
xinput set-prop 'GXTP7863:00 27C6:01E0 Touchpad'         'libinput Accel Speed' +0.3
xinput set-prop 'GXTP7863:00 27C6:01E0 Touchpad'         'libinput Natural Scrolling Enabled' 1
xinput set-prop 'GXTP7863:00 27C6:01E0 Touchpad'         'libinput Tapping Enabled' 1
xinput set-prop 'GXTP7863:00 27C6:01E0 Touchpad'         'libinput Scrolling Pixel Distance' 15
xinput set-prop '15'         'libinput Accel Speed' -0.5
