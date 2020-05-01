# PATH
export PATH=.scripts/:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH="$PATH:`yarn global bin`"
## android studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Zsh
ZSH_THEME="eastwood"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  npm
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Locale
export LANG=en_US.UTF-8

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Vars for deb packaging
DEBEMAIL="ash.shaked@gmail.com"
DEBFULLNAME="Shaked Ashkenazi"
export DEBEMAIL DEBFULLNAME

# Execute aliases
[ -f ~/.sh_aliases ] && source ~/.sh_aliases

# Disable dotnet telemetry
DOTNET_CLI_TELEMETRY_OPTOUT=1

# Shortcut for tablet AVD
export TAB_AVD="8_Galaxy_Tab_Active_API_25"
