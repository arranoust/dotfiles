if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    set -Ux XDG_SESSION_TYPE wayland
    set -Ux XDG_CURRENT_DESKTOP Hyprland
    set -Ux GTK_USE_PORTAL 1
    exec Hyprland
  end
end

# Aliasses
source ~/.config/fish/conf.d/abbr.fish

# Other Stuffs
cat /home/arranoust/.cache/wal/sequences
set -g fish_greeting
fastfetch
