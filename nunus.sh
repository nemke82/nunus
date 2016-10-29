#!/bin/bash
# Program:
# Nunus Stress Test tool v.1
# History:
# 2016-08-15 Nemke82 First release.
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

params=$#
param1=$1

function show_help(){
cat <<EOF
    Usage: 
    bash nunus.sh siege            Start siege test for domain name (if sitemap.xml is generated).
    bash nunus.sh -h               show this help.
EOF
}

function Stress-test-tool(){
    if [[ "$param1" == "siege" ]];then
    echo "Checking if siege tool is installed".
    elif [ ! -f /usr/local/bin/siege ];then
    git clone https://github.com/JoeDog/siege.git &&
    cd siege* &&
    ./configure --with-ssl=/usr/lib/openssl
    make &&
    make install
    fi
    echo "NOTE: Make sure that sitemap.xml file is generated and ready on domain name you plan to test"
    echo "Please enter domain name:"
    read domain
    echo "" > urls.txt && 
    curl -s http://$domain/sitemap.xml | grep "<loc>" | awk -F"<loc>" '{print $2} ' | awk -F"</loc>" '{print $1}' > urls.txt &&
    echo "How many concurrent users you wish me to run?"
    read concurrent
    echo "Enter TIMED testing where "m" is modifier S, M, or H ex: 60s, for 60 second, 1h for 1 hour. Also make sure that your ip address is whitelisted to avoid Firewall block."
    read time
    siege -i -c $concurrent -t $time -f urls.txt 
    echo "done."
}

function main(){
    case "$params" in
        "0")
            show_help;
            exit 0;
            ;;
        "1" | "2")
            if [[ "$param1" == "-h" ]];then
                show_help;
            elif [[ "$param1" == "siege" ]];then
                Stress-test-tool;
            else
                show_help;
            fi
            exit 0;
            ;;
        *)
            show_help;
            exit 0;
            ;;
    esac
}

main;
