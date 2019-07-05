#!/bin/zsh

local _stderred_so_path
_stderred_so_path="${ZSHRC_DIR}/stderred/build/libstderred.so"
if [[ -z "$_stderred_so_path" ]]; then
    print "Can't find $_stderred_so_path please make it and reload zsh" 1>&2
fi
export LD_PRELOAD="${_stderred_so_path}${LD_PRELOAD:+:$LD_PRELOAD}"
