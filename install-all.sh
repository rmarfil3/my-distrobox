#!/bin/sh
for script in /usr/local/bin/install-scripts/*.sh; do
    [ -f "$script" ] && [ -x "$script" ] && "$script"
done

