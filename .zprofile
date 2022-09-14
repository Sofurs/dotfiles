export TERM='alacritty'
export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='brave'

export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER="less -R --use-color -Dd+r -Du+b"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi