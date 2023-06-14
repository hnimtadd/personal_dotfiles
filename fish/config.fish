if status is-interactive
  set -x __fish_trace_fishscript
  set fish_greeting ""
  fish_ssh_agent

  # theme
  set -g fish_prompt_pwd_dir_length 1
  set -g theme_display_user yes
  set -g theme_hide_hostname no
  set -g theme_hostname always

  # aliases

  alias ll "ls -l"
  alias lla "ll -A"
  alias g git
  alias xm "sh ~/xmodmap.sh"
  alias delvs 'delete_swap_neovim;commandline -f repaint'
  alias grep 'rg'
  alias capture 'escrotum'
  command -qv nvim && alias vim nvim
set -Ux TELEGRAM_KEY "6287575718:AAGjrInryAJQoXYx6qP5YLhQLaOr8ukWjvk"
  set -gx EDITOR nvim
  # set -gx PATH /home/hnimtadd/miniconda3/bin $PATH  # commented out by conda initialize
  set -gx PATH ~/.config/scripts $PATH

  set -gx PATH bin $PATH
  set -gx PATH ~/bin $PATH
  set -gx PATH ~/.local/bin $PATH
  set --export ANDROID $HOME/Android
  set --export ANDROID_HOME $ANDROID/Sdk
  # NodeJS
  set -gx PATH node_modules/.bin $PATH

  # Go
  set -g GOPATH /usr/local/go
  set -gx PATH $GOPATH/bin $PATH
  set -gx ANTLR_JAR $HOME/.jar/antlr-4.9.2-complete.jar
  # NVM
  function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return
    if test -f .nvmrc; and test -r .nvmrc;
      nvm use
    else
    end
  end

  switch (uname)
    case Linux
      source (dirname (status --current-filename))/config-linux.fish
      source (dirname (status --current-filename))/tmux.fish
  end


  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  status is-interactive &&  eval /home/hnimtadd/miniconda3/bin/conda "shell.fish" "hook" $argv | source
  # <<< conda initialize <<<
 starship init fish | source
 fish_vi_key_bindings
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
end
