# files and dirs
abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -pv"
abbr rmrf "rm -rfi"
abbr less "less -MNi"
abbr tgz "tar -xvzf"

# basic commands replacements
abbr cat bat
abbr top btop
alias ls="eza --color=auto --icons=auto --group-directories-first"
alias la="eza --color=auto --icons=auto --group-directories-first --all"
alias ll="eza --color=auto --icons=auto --group-directories-first --all --long"
abbr find fd
abbr grep rg

# editor
abbr vim nvim
abbr vi nvim
abbr v nvim

# pacman
abbr pacu "sudo pacman -Syu"
abbr paci "sudo pacman -S"
abbr pacr "sudo pacman -Rs"

# tmux
# ...

# misc
abbr c clear
abbr cmd "command -v"
abbr h history
abbr x exit
abbr zzz "shutdown 0"

