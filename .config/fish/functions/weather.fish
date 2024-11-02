function weather
    set location (string escape --style=url "$argv")
    if test -z $location;
        set location "Milan"
    end
    curl -s "wttr.in/$location" | grep -v Follow
end

