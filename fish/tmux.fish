if status is-interactive && not set -q TMUX
    if tmux has-session -t BASE
	exec tmux attach-session -t BASE
    else
        # tmux new-session -s BASE
        tmux new-session -As BASE
    end
end
