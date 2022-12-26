# === FONT SETTINGS ===
set reset (tput sgr0) & # styles
set bold (tput bold) &

set black (tput setaf 0) & # colors
set red (tput setaf 1) &
set green (tput setaf 2) &
set yellow (tput setaf 3) &
set blue (tput setaf 4) &
set magenta (tput setaf 5) &
set cyan (tput setaf 6) &
set white (tput setaf 7) &

# === IF USER IS USING PROMPT THEN SET EDITOR AND ALIAS ===
if status is-interactive
	set EDITOR nv
	alias nv='nvim -u ~/Documents/neovim/init.lua'
end

# === FISH GREETING ===
function fish_greeting
    clear
end

# === MY FISH PROMPT ===
function fish_prompt
	if test $status -eq 0
		echo -n "$green > $reset"
	else
		echo -n "$red > $reset"
	end
end
