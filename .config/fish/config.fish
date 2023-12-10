if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Stack
fish_add_path export PATH="$HOME/.local/bin:$PATH"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx
    end
end
