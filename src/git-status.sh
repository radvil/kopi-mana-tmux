#!/bin/env bash

cd "$1" || return
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null | egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
	if test "$STATUS" = "0"; then
		echo "#[fg=#5d81ab,bg=#30303b,nobold,nounderscore,noitalics]#[fg=#202027,bg=#5d81ab,bold]  $BRANCH"
	else
		echo "#[fg=#f5e0dc,bg=#30303b,nobold,nounderscore,noitalics]#[fg=#202027,bg=#f5e0dc,bold]  $BRANCH"
	fi
else
	# os distro
	echo "#[fg=#5d81ab,bg=#30303b,nobold,nounderscore,noitalics]#[fg=#202027,bg=#5d81ab,bold] #h"
fi
