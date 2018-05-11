#!/bin/bash

clear
echo HHs Awsome PS Script to do cool recon on websites. Using the HackerTarget.com API.
if [ -z "$1" ]; then
                echo "[*] Usage : $0 <Enter your target domain, ie google.com> "
                exit 0
fi

mkdir $1

PS3='Please enter your choice: '
options=("TraceRt" "Test Ping" "DNS Lookup" "DNS Host Records" "Reverse DNS" "Whois Lookup" "GEO IP" "Reverse IP" "HTTP Header Check" "Extract Links from Page" "Full Gambit - ALL SCANS" "Quit")
select opt in "${options[@]}"

do
    case $opt in

                                                "TraceRt")

            curl "https://api.hackertarget.com/mtr/?q=$1" > $1/tracert-$1.txt 

            ;;

                                                "Test Ping")

            curl "https://api.hackertarget.com/nping/?q=$1" > $1/ping-$1.txt

            ;;

                                                "DNS Lookup")

            curl "https://api.hackertarget.com/dnslookup/?q=$1" > $1/dns-lookup-$1.txt

            ;;

                                                "DNS Host Records")

            curl "https://api.hackertarget.com/hostsearch/?q=$1" > $1/hostrecords-$1.txt

            ;;

                                                "Reverse DNS")

            curl "https://api.hackertarget.com/reversedns/?q=$1" > $1/reverse-dns-$1.txt

            ;;

                                                "Whois Lookup")

            curl "https://api.hackertarget.com/whois/?q=$1" > $1/whois-$1.txt

            ;;

                                                "GEO IP")

            curl "https://api.hackertarget.com/geoip/?q=$1" > $1/geo-ip-$1.txt

            ;;

                                                "Reverse IP")

            curl "https://api.hackertarget.com/reverseiplookup/?q=$1" > $1/reverse-ip-$1.txt

            ;;

                                                "HTTP Header Check")

            curl "https://api.hackertarget.com/httpheaders/?q=$1" > $1/http-header-$1.txt

            ;;

                                                "Extract Links from Page")

            	curl "https://api.hackertarget.com/pagelinks/?q=$1" > $1/page-link-$1.txt

            ;;
						"Full Gambit - ALL SCANS") 

        	curl "https://api.hackertarget.com/mtr/?q=$1" > $1/tracert-$1.txt
		curl "https://api.hackertarget.com/nping/?q=$1" > $1/ping-$1.txt
		curl "https://api.hackertarget.com/dnslookup/?q=$1" > $1/dns-lookup-$1.txt
		curl "https://api.hackertarget.com/hostsearch/?q=$1" > $1/hostrecords-$1.txt
		curl "https://api.hackertarget.com/reversedns/?q=$1" > $1/reverse-dns-$1.txt
		curl "https://api.hackertarget.com/whois/?q=$1" > $1/whois-$1.txt
		curl "https://api.hackertarget.com/geoip/?q=$1" > $1/geo-ip-$1.txt
		curl "https://api.hackertarget.com/reverseiplookup/?q=$1" > $1/reverse-ip-$1.txt
		curl "https://api.hackertarget.com/httpheaders/?q=$1" > $1/http-header-$1.txt
		curl "https://api.hackertarget.com/pagelinks/?q=$1" > $1/page-link-$1.txt
		break
            ;;
						"Quit")
            break
            ;;
        *) echo invalid option;;

    esac

done
clear
