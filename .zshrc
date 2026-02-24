# --- Global:
	setopt autocd promptsubst notify hist_verify hist_ignore_dups hist_ignore_space interactivecomments numericglobsort
	unsetopt list_packed list_types no_list_ambiguous 
	HISTFILE=~/.zsh_history
	HISTSIZE=100
	SAVEHIST=200
	WORDCHARS=${WORDCHARS//[\/]}
	PROMPT_EOL_MARK=""              # hide EOL mark
	PROMPT="[%F{34}%Buser@%m%b%f:%F{yellow}%B%~%b%f]\$(git_branch)$ %f"
	
# --- Completion Feature:
	autoload -Uz compinit
	compinit -d ~/.cache/zcompdump 
	zstyle ':completion:*' sort true
	zstyle ':completion:*' use-cache on
	zstyle ':completion:*' cache-path ~/.cache/zsh
	zstyle ':completion:*:*:*:*:*' menu select
	zstyle ':completion:*' list-prompt ''
	zstyle ':completion:*' group-name ''
	zstyle ':completion:*' verbose true
	zstyle ':completion:*' completer _expand _complete
	zstyle ':completion:*' rehash true
	zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
	zstyle ':completion:*' special-dirs true
	zstyle ':completion:*' format '%K{0}%F{255}━━ %F{51}%d %F{255}━━%f%k'
	zstyle ':completion:*:warnings' format '%F{red}No matches found.%f'
	
# --- Function:
#	Show git branch / detached state
	git_branch() {
	local ref
	ref=$(git symbolic-ref --quiet --short HEAD 2>/dev/null)
	if [[ -n $ref ]]; then
	echo " %F{cyan}${(U)ref} %f"
	return
	fi
	ref=$(git rev-parse --short HEAD 2>/dev/null) || return
	echo " %F{red}DETACHED:${(U)ref} %f"
	}
#	Show venv name in prompt if active
	precmd() { 
	if [[ -n "$VIRTUAL_ENV" ]]; then
	export PYTHON="$VIRTUAL_ENV/bin/python"
	else
	unset PYTHON
	fi
	}

# --- Global keybindings:
	bindkey -e                                        # emacs key bindings
	bindkey ' ' magic-space                           # do history expansion on space
	bindkey '^U' backward-kill-line                   # ctrl + U
	bindkey '^[[3;5~' kill-word                       # ctrl + Supr
	bindkey '^[[3~' delete-char                       # delete
	bindkey '^[[1;5C' forward-word                    # ctrl + ->
	bindkey '^[[1;5D' backward-word                   # ctrl + <-
	bindkey '^[[5~' beginning-of-buffer-or-history    # page up
	bindkey '^[[6~' end-of-buffer-or-history          # page down
	bindkey '^[[H' beginning-of-line                  # home
	bindkey '^[[F' end-of-line                        # end
	bindkey '^[[Z' undo                               # shift + tab undo last action

# --- Environment:
	export EDITOR='nvim'
	export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"

# --- Alias: 
	alias clr='clear'
	alias ip='ip --color=auto'
	alias jl='journalctl'
	alias jlf='journalctl -f'
	alias tm='tmux'
# Files 
	alias ls='ls --color=auto'
	alias ll='ls -alF --color=auto'
	alias la='ls -A --color=auto'
	alias diff='diff --color=auto'
# Search 
	alias history="history 0"
	alias grep='grep --color=auto'
	alias egrep='egrep --color=auto'
	alias fgrep='fgrep --color=auto'
# Navigation 
	alias ..='cd ..'
	alias ...='cd ../..'
	alias ....='cd ../../..'
	alias grimshot='grim -g $(slurp) - | wl-copy'
