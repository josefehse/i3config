killall polybar

CONFIGPATH='~/.config/polybar/config.ini'
polybar -c $CONFIGPATH bar1 & polybar -c $CONFIGPATH bar2 & polybar -c $CONFIGPATH bar3 &
