function tmux_update
    $XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins
    $XDG_CONFIG_HOME/tmux/plugins/tpm/bin/clean_plugins
    $XDG_CONFIG_HOME/tmux/plugins/tpm/bin/update_plugins all
end

