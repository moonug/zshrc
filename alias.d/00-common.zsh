case $platform in
    linux)
        alias ls='ls -lsah --color=auto'
        alias zhostinfo="uname -a ; [ -f /etc/issue ] && cat /etc/issue | head -1 ; cat /proc/cpuinfo | grep -m1 --color=never name ; head -2 /proc/meminfo ; uptime "
        ;;
    bsd)
        alias ls='ls -Glsah'
        alias nload='systat -ifstat scale mbit 1'
        alias tp="top -HPSzs1"
        for number2 in {vlan{1..4096},igb{0..10},em{0..10},ix{0..10},lagg{0..10},cxl{0..10},gif{0..300}}; do alias int$number2="netstat -I $number2 -hbdw1"; done;
        alias tcp="systat -tcp 1"
        alias ip_stat="systat -ip 1"
        alias ip6_stat="systat -ip6 1"
        alias hdd="iostat -dx -w1"
        alias zhostinfo="uname -a ; sysctl hw.model ; grep memory /var/run/dmesg.boot ; uptime"
        alias sockets="sysctl kern.ipc.numopensockets"
        alias fwdrops="ipfw show | awk '$0 ~ /deny/ { x+= $2} END { print x}'"
        ;;
    mac)
        alias zhostinfo="sysctl hw.model ; uptime; hostinfo"
        ;;
esac

