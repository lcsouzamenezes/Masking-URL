# Bash Script for Hide Phishing URL Created by Suman Online Hacking

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo ""
echo ""
echo -e " \e[92m   ╔═══════════════════════════════════════════════════════════╗ "
echo -e " \e[91m   ║ \e[93m ███    ███  █████  ███████ ██   ██ ██ ███    ██  ██████  \e[91m║ "
echo -e " \e[91m   ║ \e[93m ████  ████ ██   ██ ██      ██  ██  ██ ████   ██ ██       \e[91m║"
echo -e " \e[91m   ║ \e[93m ██ ████ ██ ███████ ███████ █████   ██ ██ ██  ██ ██   ███ \e[91m║ "
echo -e " \e[91m   ║ \e[93m ██  ██  ██ ██   ██      ██ ██  ██  ██ ██  ██ ██ ██    ██ \e[91m║ "
echo -e " \e[91m   ║ \e[93m ██      ██ ██   ██ ███████ ██   ██ ██ ██   ████  ██████  \e[91m║ \e[33mSUMAN"
echo -e " \e[96m   ╚═══════════════════════════════════════════════════════════╝  \e[33mV2.2 "
echo ""
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mWebsite  \e[1;91m= \e[5m \e[1;97mwww.termux.xyz  "
echo ""
echo -e " \e[5m         \e[25m \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mWebsite  \e[1;91m=  \e[4m\e[1;97mwww.OnlineHacking.in\e[24m   "
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mTelegram \e[5m\e[1;91m=  \e[1;97m@OnlineHacking   \e[93m   "
echo ""
echo ""
echo -e " \e[92m                    ╔═╗\e[95m┌┐┌┬  ┬┌┐┌┌─┐ \e[94m ╦ ╦\e[95m┌─┐┌─┐┬┌─┬┌┐┌┌─┐  "
echo -e " \e[92m                    ║ ║\e[95m││││  ││││├┤  \e[94m ╠═╣\e[95m├─┤│  ├┴┐│││││ ┬  "
echo -e " \e[92m                    ╚═╝\e[95m┘└┘┴─┘┴┘└┘└─┘ \e[94m ╩ ╩\e[95m┴ ┴└─┘┴ ┴┴┘└┘└─┘ \e[32m "
echo ""
echo "" 
echo -n "Paste Phishing URL here (with http or https): "
echo -en "\e[32m=>\e[0m "
read phish
url_checker $phish
echo "Processing and Modifing Phishing URL"
sleep 3
echo ""
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e ""
echo -e 'Domain to mask the Phishing URL \e[91m(Ex:\e[96m https://google.com , http://facebook.com)\e[0m :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words \e[91m(Ex:\e[96m like, free-money, free-insta-followers)'
echo -e "\e[93mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\n\e[95mGenerating Masking by Online Hacking Link...\e[0m\n"
sleep 4
final=$mask-$words@$shorter
echo -e "Here is the Masking URL:\e[32m ${final} \e[0m\n"
