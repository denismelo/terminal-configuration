# @author: deverebor
# @version: 2.5
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME=""

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zdharma-continuum/fast-syntax-highlighting

### End of Zinit's installer chunk
zinit load agkozak/zsh-z

### Aliases

alias ll="colorls -1"
alias zshrc="code ~/.zshrc"
alias ohmyzshrc="code ~/.oh-my-zsh"
alias gitconfig="code ~/.gitconfig"
alias sstoml="code ~/.config/starship.toml"

### Custom scripts
# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# # This loads colorls
# source $(dirname $(gem which colorls))/tab_complete.sh

#This load yarn in shell
export PATH="$(yarn global bin):$PATH"

# Personal SpaceShip config
# SPACESHIP_PROMPT_ORDER=(
#   line_sep      # Line break
#   time          # Time stampts section
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   node          # Node.js section
#   ruby          # Ruby section
#   python        # Python section
#   java          # Java section
#   docker        # Docker section
#   venv          # virtualenv section
#   conda         # conda virtualenv section
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )
# SPACESHIP_USER_SHOW=always
# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_USER_PREFIX=
# SPACESHIP_DOCKER_SHOW=true
zplugin load zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
eval "$(starship init zsh)"