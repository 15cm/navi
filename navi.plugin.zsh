_call_navi() {
   local buff="$BUFFER"
   zle kill-whole-line
   local cmd="$(NAVI_USE_FZF_ALL_INPUTS=true /usr/local/bin/navi --col-colors 235 --print <> /dev/tty)"
   zle -U "${buff}${cmd}"
}

zle -N _call_navi

bindkey -v '^y' _call_navi
