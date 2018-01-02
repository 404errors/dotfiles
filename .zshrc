# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh
  export EDITOR='vim'
#  source ~/.bin/tmuxinator.zsh
#export http_proxy=vn2.proxyvn.com:2222
#export https_proxy=vn2.proxyvn.com:2222
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
########### DEFINE ##########
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export VISUAL="nvim"
IBUS_ENABLE_SYNC_MODE=1 ibus-daemon -xrd
export LANG=en_US.UTF-8
export QT_IM_MODULE=ibus
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias vim='nvim'
#alias vi='nvim'
#enable tap to click on Synaptics Touchpad
xinput set-prop SynPS\/2\ Synaptics\ TouchPad 293 1
alias cls='clear'
alias pac='sudo pacman'
alias ls='ls -la'
alias ya='yaourt'
alias update='sudo pacman -Syu'
alias wifi='sudo wifi-menu'
alias pingg='ping 8.8.8.8'
alias teamv='teamviewer --daemon start'
alias ff='FreeFem++'
alias open='xdg-open'
alias temp='sensors'
alias bright='sudo tee /sys/class/backlight/acpi_video0/brightness <<<'
alias enableweb='sudo systemctl enable mariadb.service httpd.service'
alias disableweb='sudo systemctl disable mariadb.service httd.service'
alias stopweb='sudo systemctl stop mariadb.service httpd.service'
alias startweb='sudo systemctl start mariadb.service httpd.service'
alias android='/home/phucnn/Android/Sdk/emulator/emulator -avd Nexus_5X_API_25 &'
alias pacin='sudo pacman -S'
alias change_usb='sudo usb_modeswitch -c /usr/share/usb_modeswitch/12d1\:1446 -v 12d1 -p 1446'
alias ena='sudo systemctl enable'
alias dis='sudo systemctl disable'
alias sta='sudo systemctl start'
alias sto='sudo systemctl stop'
