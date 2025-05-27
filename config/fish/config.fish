if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

function init_conda
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /home/aor/softwares/miniconda3/bin/conda
        eval /home/aor/softwares/miniconda3/bin/conda "shell.fish" hook $argv | source
    else
        if test -f "/home/aor/softwares/miniconda3/etc/fish/conf.d/conda.fish"
            . "/home/aor/softwares/miniconda3/etc/fish/conf.d/conda.fish"
        else
            set -x PATH /home/aor/softwares/miniconda3/bin $PATH
        end
    end
    # <<< conda initialize <<<
end
