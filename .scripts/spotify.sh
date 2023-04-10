title="$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata 2>/dev/null| sed -n '/title/{n;p}' | cut -d '"' -f 2)"
artist="$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:org.mpris.MediaPlayer2.Player string:Metadata 2>/dev/null| sed -n '/artist/{n;n;p}' | cut -d '"' -f 2)"
if [ "$title" != "" ]; then
    title=$(echo "$title" | sed 's/\(.*\)\( (.*)\)/\1/')
    title=$(echo "$title" | sed 's/\(.*\)\( -.*\)/\1/')
    if [ "$title" = "Spotify" ] || [ "$title" = "Advertisement" ]; then
        pactl set-sink-volume 2 0%
        string="$title"
    else
        pactl set-sink-volume 2 100%
        string="$title - $artist"
    fi
    echo "$string"
fi
