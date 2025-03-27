# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
if [[ ":$PATH:" != *":/home/tim/path_entries:"* ]]; then
	export PATH="$PATH:/home/tim/path_entries"
fi

if [[ ":$PATH:" != *":/home/tim/.spicetify:"* ]]; then
	export PATH="$PATH:/home/tim/.spicetify"
fi

if [ -n "$DISPLAY" ]; then
	eval "$(starship init bash)"
fi
