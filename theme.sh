COLOR_ACTIVE=colour148
COLOR_INACTIVE=colour238
COLOR_STATUS_FOREGROUND=colour255
COLOR_STATUS_BACKGROUND=colour238
COLOR_BLUE=colour24

set -g status-left-length 150
set -g status-right-length 150
set -g status-interval 60

#
# Default Status Bar Settings
#
set-option -g status-fg $COLOR_STATUS_FOREGROUND
set-option -g status-bg default
set-option -g status-attr default

#
# Default window Title Settings
#
set-window-option -g window-status-fg $COLOR_STATUS_FOREGROUND
set-window-option -g window-status-bg $COLOR_STATUS_BACKGROUND
set -g window-status-format " #I #W "

#
# Active Window Title Settings
#
set-window-option -g window-status-current-fg colour0
set-window-option -g window-status-current-bg $COLOR_ACTIVE
set-window-option -g window-status-current-format " #I #W "

#
# Pane Border
#
set-option -g pane-border-fg $COLOR_STATUS_FOREGROUND
set-option -g pane-active-border-fg $COLOR_STATUS_FOREGROUND

#
# Message Text
#
set-option -g message-bg default
set-option -g message-fg $COLOR_ACTIVE

#
# Pane Number Display
#
set-option -g display-panes-active-colour $COLOR_ACTIVE
set-option -g display-panes-colour $COLOR_INACTIVE

#
# Clock Settings
#
set-window-option -g clock-mode-colour colour160

#
# Title String Settings
#
# If you're using iTerm2, then this title string will be used in place of the tab names you may have
# set for iTerm2. This will also replace any "Thank you for flying Vim" tab titles. It is
# recommended that you UNCHECK the "Show profile name" setting in Appearance > Window & Tab Titles.
#
set -g set-titles-string "#S -- #W"

#
# Status Bar Settings: Bottom-left
#
# Set the bottom-left text for the status bar.
#
set -g status-left "#[fg=$COLOR_BLUE]tmux Session: \"#S\" #[fg=$COLOR_STATUS_FOREGROUND]\\\\\\ "

#
# Status Bar Settings: Bottom-right
#
# Set the bottom-right text for the status bar.
#
separator_forward="#[fg=$COLOR_STATUS_FOREGROUND]///"
php_version="#[fg=$COLOR_ACTIVE]PHP v#(/usr/bin/php --version | grep -m1 PHP | sed -e 's/ (cli).*//g' | sed 's/PHP //') $separator_forward"
# java_version="#[fg=$COLOR_ACTIVE]#(/usr/bin/java --version | grep -m1 'Runtime') $separator_forward"
node_version="#[fg=$COLOR_ACTIVE]Node #(node --version) (#[fg=$COLOR_ACTIVE]npm v#(npm --version)) $separator_forward"
xcode_select_version="#[fg=$COLOR_ACTIVE]#(/usr/bin/xcode-select --version | sed -e 's/version /v/g' | sed s'/.$//') $separator_forward"

set -g status-right "$xcode_select_version $php_version $node_version #[fg=$COLOR_BLUE]%A | %d %H%M R %m %Y"

