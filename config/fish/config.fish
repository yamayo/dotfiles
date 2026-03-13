set -g theme_display_git_default_branch yes
set -g fish_prompt_pwd_dir_length 0
set -gx EDITOR nvim

if status is-interactive
  # Commands to run in interactive sessions can go here
  eval (/opt/homebrew/bin/brew shellenv)

  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

mise activate fish | source

# aliases
alias g git
alias ll "eza -l -g --icons"
alias lla "ll -a"
alias vim nvim
alias vi vim
alias v vi
alias gcurl 'curl -H "Authorization: Bearer $(gcloud auth print-access-token)" -H "Content-Type: application/json" '
alias k kubectl
alias pn pnpm

function mkd
  command mkdir {$argv[1]} && cd {$argv[1]}
end

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "~/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)⏎
set -gx PATH "$(go env GOPATH)/bin" $PATH

kubectl completion fish | source

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
export PATH="$HOME/.local/bin:$PATH"
