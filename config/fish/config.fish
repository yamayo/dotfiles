set -g theme_display_git_default_branch yes
set -g fish_prompt_pwd_dir_length 0
set -gx EDITOR nvim

if status is-interactive
  # Commands to run in interactive sessions can go here
  eval (/opt/homebrew/bin/brew shellenv)

  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

# aliases
alias g git
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias vim nvim
alias vi vim
alias v vi

function mkd
  command mkdir {$argv[1]} && cd {$argv[1]}
end
