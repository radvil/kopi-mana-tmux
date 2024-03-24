#!/bin/env bash

cd "$1" || return
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null | egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
	if test "$STATUS" = "0"; then
		echo "#[fg=#89b4fa,bg=#45475a,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#89b4fa,bold]  $BRANCH"
	else
		echo "#[fg=#f5e0dc,bg=#45475a,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#f5e0dc,bold]  $BRANCH"
	fi
else
	# os distro
	echo "#[fg=#89b4fa,bg=#45475a,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#89b4fa,bold] #h"
fi
