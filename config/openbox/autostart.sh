. $GLOBALAUTOSTART

# Fool xdg-* tools to think I'm running kde
export DE=kde

# Set keyboard repeat rate
xset r rate 333 30

# Background
nitrogen --restore

# Composition
xcompmgr -n &

# Panel
avant-window-navigator &

# Skype
skype &
