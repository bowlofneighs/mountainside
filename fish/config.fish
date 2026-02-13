if status is-interactive
	fastfetch

	alias cat "echo !! bat is recommended over cat !! ; echo; echo; /usr/sbin/cat"
	alias ls "lsd -l"
	alias .. "z .."
	alias ... "z ~"

	# zoxide set up
	alias cd "z"
	zoxide init fish | source
	
end

# terminal-wakatime setup
set -x PATH "$HOME/.wakatime" $PATH
terminal-wakatime init fish | source
