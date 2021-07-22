flush_cache() {
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}

get_secret() {
    $(security find-generic-password -a ${USER} -s $1 -w)
}

alias untar='tar -xvzf'