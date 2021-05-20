#----------------------------------------------------------;
#                         ANTIGEN                          ;
#----------------------------------------------------------;

# TODO: Figure out why completion plugins doesn't work sometimes

antigen_path=$HOME/.antigen
if [ ! -d $antigen_path ]; then
    git clone --branch master https://github.com/zsh-users/antigen.git $antigen_path
fi

source $antigen_path/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle colored-man-pages
antigen bundle command-not-found

# Load the theme.
antigen theme af-magic

# Other plugins
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle chriskempson/base16-shell
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-completions
antigen bundle Aloxaf/fzf-tab

# Tell Antigen that you're done.
antigen apply

#----------------------------------------------------------;
#                            FZF                           ;
#----------------------------------------------------------;

export FZF_DEFAULT_OPTS='--prompt " λ "'

fzf_path=/usr/share/fzf
if [ -d "$fzf_path" ]; then
  source "$fzf_path/key-bindings.zsh"
  source "$fzf_path/completion.zsh"
fi

#----------------------------------------------------------;
#                           ASDF                           ;
#----------------------------------------------------------;

asdf_path=$HOME/.asdf/asdf.sh
[ -f $asdf_path ] && . $asdf_path

#----------------------------------------------------------;
#                    ZSH CONFIGURATION                     ;
#----------------------------------------------------------;

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(
#   git
# )

# [ -f $ZSH ] && source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#----------------------------------------------------------;
#                         ALIASES                          ;
#----------------------------------------------------------;

alias v="vim"
alias vf="vifm"
alias nv="nvim"

alias se="sudoedit"

alias gs="git status"

alias ls="exa"

alias rm="rmtrash"
alias rmdir="rmdirtrash"
alias restore="trash-restore"

alias mc="make clean"
alias mk="make"

alias pd="popd"

alias hm="home-manager"
alias hms="home-manager switch"

alias tl="tmux ls"
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tk="tmux kill-session -t"

alias pacs="sudo pacman -S"
alias pacup="sudo pacman -Syu"
alias pacr="sudo pacman -Rns"
alias pacf="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacq="pacman -Q"

alias yays="yay -S"
alias yayf="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"
alias yayr="yay -Rns"
alias yayup="yay -Syu"

if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

alias luamake=/home/vini/language_servers/lua-language-server/3rd/luamake/luamake
