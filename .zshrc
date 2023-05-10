zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' menu select

autoload -Uz compinit && compinit

export HISTFILE=~/.histfile
export HISTSIZE=100000
setopt autocd
bindkey -e
#kitty + complete setup zsh | source /dev/stdin

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line


EDITOR=nvim

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#707070,bold,underline"

# PLUGINS
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ~/.config/zsh/.zfunctions/git-status-prompt.zsh 2>/dev/null

fpath=( "$HOME/.config/zsh/.zprompts" $fpath )
autoload -Uz promptinit && promptinit
setopt prompt_subst
prompt mypromptv2

# Load aliases
[ -f ~/.sh_aliases ] && source ~/.sh_aliases

# PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$HOME/.fnm:$PATH


# fnm
#eval "`fnm env`"

# DOTNET
DOTNET_CLI_TELEMETRY_OPTOUT=1

# AVD
export TAB_AVD="8_Galaxy_Tab_Active_API_25"


# fnm
export PATH=/home/almond/.fnm:$PATH
eval "`fnm env`"
