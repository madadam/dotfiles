# Background
nitrogen --restore

# Fool xdg-* tools to think I'm running kde
export DE=kde

. $GLOBALAUTOSTART

# Set keyboard repeat rate
xset r rate 333 30

# Composition
xcompmgr -n &

# Panel
avant-window-navigator &

# Skype
skype &
