#!/bin/bash

displayLogo() {
  echo -e "\e[32m
      ____ _   _ ____ _____ ___  __  __        _  __    _    _     ___ 
     / ___| | | / ___|_   _/ _ \|  \/  |      | |/ /   / \  | |   |_ _|
    | |   | | | \___ \ | || | | | |\/| |      | ' /   / _ \ | |    | | 
    | |___| |_| |___) || || |_| | |  | |      | . \  / ___ \| |___ | | 
     \____|\___/|____/ |_| \___/|_|  |_|      |_|\_\/_/   \_\_____|___|
                                                                       
          ___ _   _ ____ _____  _    _     _     _____ ____            
         |_ _| \ | / ___|_   _|/ \  | |   | |   | ____|  _ \           
          | ||  \| \___ \ | | / _ \ | |   | |   |  _| | |_) |          
          | || |\  |___) || |/ ___ \| |___| |___| |___|  _ <           
         |___|_| \_|____/ |_/_/   \_\_____|_____|_____|_| \_\          
      
	\e[0m"
}

displayLogo

echo -e "\e[32mAUTHOR: CyberMunky - YouTube: Exploit Security - Twitter: @Cybermunky1\e[0m"
echo -e "\e[32mVERSION: 1.0\e[0m"
echo -e "\e[32mDATE: 01/25/2020\e[0m\n"
echo -e "            \e[41m[+] THIS PROGRAM WILL ONLY WORK WHILE RUNNING VIA A VIRTUAL OPERATING SYSTEM! [+]\e[0m"
echo -e "\n
          [+] This program was developed to expedite the \e[91mLive Build a Custom Kali Iso\e[0m which can
       	      found at \e[32mhttps://www.kali.org/docs/development/live-build-a-custom-kali-iso/\e[0m. The
              intent of this program was simply to automate the process. I hope you enjoy; this 
              program is under constant development. New features will be rolled out accordingly.                 
        "

sleep 5

echo -e "\e[32m
Please Select a Kali Linux Desktop Environment:

1. KDE
2. MATE
3. GNOME
4. XFCE
5. E17
6. LXDE
7. I3WM
0. QUIT
"

read -p "Enter your Selection [0-7] > "

if [[ "$REPLY" == 0 ]]; then
	echo -e "\e[91m\n[-] Quitting the Program!\e[0m\n"
	exit
fi

if sudo apt install -y curl git live-build cdebootstrap; then
	echo -e "\e[32m\n[+] CDEBOOTSRAP HAS BEEN SUCCUESFULLY INSTALLED\e[0m\n"
	if git clone https://gitlab.com/kalilinux/build-scripts/live-build-config.git; then
		echo -e "\e[32m\n[+] LIVE-BUILD-CONFIG HAS BEEN SUCCUESFULLY CLONED FROM GIT\e[0m\n"
		sleep 3
	else
		echo -e "\e[91m\n[-] LIVE-BUILD-CONFIG HAS NOT BEEN SUCCUESFULLY CLONED FROM GIT\e[0m\n"
		exit
	fi
	if cd live-build-config/; then
		echo -e "\e[32m\n[+] CHANGED TO LIVE-BUILD-CONFIG FOLDER\e[0m\n"
		sleep 3
	else
		echo -e "\e[91m\n[-] FAILED TO CHANGE TO THE LIVE-BUILD-CONFIG FOLDER\e[0m\n"
		exit
	fi
else
	echo -e "\e[91m\n[-] CDEBOOTSRAP HAS FAILED TO INSTALL\e[0m\n"
	exit
fi
	
if [[ "$REPLY" =~ ^[0-7]$ ]]; then
	if [[ "REPLY" == 0 ]]; then
			echo -e "\e[91m\n[-] Quitting the Program!\e[0m\n"
			exit
	fi
	if [[ "$REPLY" == 1 ]]; then
		echo -e "\e[32m\n[+] Installing the KDE Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant kde --verbose
	fi
	if [[ "$REPLY" == 2 ]]; then
		echo -e "\e[32m\n[+] Installing the MATE Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant mate --verbose
	fi
	if [[ "$REPLY" == 3 ]]; then
		echo -e "\e[32m\n[+] Installing the GNOME Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant gnome --verbose
	fi
	if [[ "$REPLY" == 4 ]]; then
		echo -e "\e[32m\n[+] Installing the XFCE Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant xfce --verbose
	fi
	if [[ "$REPLY" == 5 ]]; then
		echo -e "\e[32m\n[+] Installing the E17 Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant e17 --verbose
	fi
	if [[ "$REPLY" == 6 ]]; then
		echo -e "\e[32m\n[+] Installing the LXDE Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant lxde --verbose
	fi
	if [[ "$REPLY" == 7 ]]; then
		echo -e "\e[32m\n[+] Installing the I3WM Desktop. Please Wait!\e[0m\n"
		sleep 2
		./build.sh --variant I3WM --verbose
	fi
else
	echo -e "\e[91m\n[-] FAILED TO MAKE A CORRECT SELECTION\e[0m\n"
	exit 1
fi

displayLogo