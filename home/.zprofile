export TERM='alacritty'
export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='brave'
export PATH="$HOME/.local/bin:$HOME/.config/rofi/scripts:$PATH"

export MANPAGER="less -R --use-color -Dd+r -Du+b"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx -- vt1 &> /dev/null
    logout
fi
