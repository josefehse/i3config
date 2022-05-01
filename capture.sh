SSPATH="/tmp/$(date +"%d-%m-%Y-%H-%M-%S").jpg"
import $SSPATH
xclip -selection clipboard -target image/png -i <$SSPATH
rm $SSPATH
