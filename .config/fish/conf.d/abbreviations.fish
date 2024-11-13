# files and dirs
abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."
abbr ..... "cd ../../../.."
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -pv"
abbr rmrf "rm -rf"
abbr rmrfi "rm -rfi"
abbr less "less -MNi"
abbr tgz "tar -xvzf"

# basic commands replacements
abbr cat "bat"
abbr top "btop"
alias ls="eza --color=auto --icons=auto --group-directories-first"
alias la="eza --color=auto --icons=auto --group-directories-first -lAh"
alias ll="eza --color=auto --icons=auto --group-directories-first -lh"
abbr find "fd"
abbr grep --position anywhere "rg"

# editor
abbr vim anywhere "nvim"
abbr vi anywhere "nvim"
abbr v anywhere "nvim"

# pacman
abbr pacu "sudo pacman -Syuu"
abbr paci "sudo pacman -S"
abbr pacr "sudo pacman -Rns"
abbr pacc "sudo pacman -Scc"

# tmux
abbr tm "tmux"
abbr tma "tmux attach -t"
abbr tmn "tmux new -s"
abbr tml "tmux ls"
abbr tmk "tmux kill-session -t"
abbr tmkk "tmux kill-server"

# misc
abbr !! --position anywhere --function last_history_item
abbr c "clear"
abbr cmd "command -v"
abbr h "history"
abbr x "exit"
abbr zz "systemctl suspend"
abbr zzz "systemctl poweroff"

