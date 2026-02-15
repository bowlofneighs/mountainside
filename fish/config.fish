if status is-interactive
	fastfetch

	alias cat "echo !! bat is recommended over cat !! ; echo; echo; /usr/sbin/cat"
	alias ls "lsd -l"
	alias .. "z .."
	alias ... "z ~"

	# zoxide set up
	alias cd "z"
	zoxide init fish | source
	thefuck --alias | source
	
end

# terminal-wakatime setup
set -x PATH "$HOME/.wakatime" $PATH
terminal-wakatime init fish | source

# the prompt
function fish_prompt
	set -l last_status $status
	set -l stat

	# Prompt the status of the last command only if the previous command returned a non-zero value
	if test $last_status -ne 0
		set stat (set_color red) " [$last_status]" (set_color normal)
	end

	# 
	set -l wd
	if string match -q $PWD "/home/$USER"
		set wd ""
	else
		set wd (echo " "(prompt_pwd --full-length-dirs 2))
	end

	set -l chevron (tput bold)' »'(tput sgr0)

	set vcs (set_color purple)(fish_vcs_prompt)(set_color normal)



	# actually outputs the prompt
	string join '' -- "$wd$stat$vcs$chevron" 
end

