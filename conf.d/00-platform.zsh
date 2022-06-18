case `uname` in
    Linux)      platform="linux"    ;;
    FreeBSD)    platform="bsd"      ;;
    Darwin)     platform="mac"      ;;
    *)          platform="hz"       ;;
esac


short_hostname=`hostname -f | cut -f1 -d.`

case "$short_hostname" in
    moonug-osx)
        dlevel=0
        hcolor=117
        ;;
    *)
        dlevel=7
        hcolor=magenta
        ;;
esac
