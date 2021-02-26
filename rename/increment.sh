#!/usr/bin/env bash



ls -1prt | grep -v "/$" | cat -n | while read n f; do mv -n "${f}" "$(printf "%03d" $n).${f#*.}"; done
