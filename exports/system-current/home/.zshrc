# -----------------------------
# Backup automático do zshrc
cp ~/.zshrc ~/.zshrc_backup_$(date +%Y%m%d_%H%M%S) 2>/dev/null
# -----------------------------

# Enable Powerlevel10k instant prompt
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Paths
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/home/kauan/intelFPGA/18.1/modelsim_ase/bin

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME=""

# Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k config
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# fzf keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(fzf --zsh)"

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"
ZSH_AUTOSUGGEST_ENABLE_WIDGETS=false
bindkey '^ ' autosuggest-accept

# Disable annoying bell
setopt NO_BEEP

# Go to home on start
cd ~/

# Aliases from recovered session
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

# Remove any leftover 'ls*' aliases
unalias -m 'ls*' 2>/dev/null

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

export PATH=$PATH:/opt/apache-spark/bin
export SPARK_HOME=/opt/apache-spark
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.9.9-src.zip:$PYTHONPATH
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk/
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$PATH:$HOME/.local/share/omarchy/bin"


export STARSHIP_CONFIG="$HOME/.config/starship.toml" 
eval "$(starship init zsh)"

# NOTE Zoxide
eval "$(zoxide init zsh)"

alias ls="eza --long --color=always --icons=always --no-user"

# Load Angular CLI autocompletion.
source <(ng completion script)

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Claude Code
export CLAUDE_CODE_EFFORT_LEVEL=max
export CLAUDE_CODE_DISABLE_ADAPTIVE_THINKING=1
export ANTHROPIC_BASE_URL=http://vpn-driva.netbird.driva.io:8317/
alias claude="command claude"

# Driva Design

# Hadoop variables
export HADOOP_HOME=$HOME/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export PATH=/home/kauan/.opencode/bin:$PATH


# Added by Antigravity CLI installer
export PATH="/home/kauan/.local/bin:$PATH"

# >>> oh-my-opencode-slim background subagents >>>
export OPENCODE_EXPERIMENTAL_BACKGROUND_SUBAGENTS=true
# <<< oh-my-opencode-slim background subagents <<<
