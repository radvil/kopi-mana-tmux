#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

setup() {
	tmux source-file "$CURRENT_DIR/src/status-bar.conf"
}

setup
