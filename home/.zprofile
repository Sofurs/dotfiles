export TERM='alacritty'
export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='brave'
export PATH="$HOME/.local/bin:$HOME/.config/rofi/scripts:$PATH"

export MANPAGER="less -R --use-color -Dd+r -Du+b"

export NNN_PLUG=''
export NNN_FCOLORS='0000E6310000000000000000'
export NNN_TRASH=1 
set --export NNN_FIFO "/tmp/nnn.fifo"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx -- vt1 &> /dev/null
    logout
fi
