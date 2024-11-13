# disable greeting
set -gx fish_greeting

# set theme and prompt
if status is-interactive
    fish_config theme choose "Rosé Pine"
end

# start x on login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

