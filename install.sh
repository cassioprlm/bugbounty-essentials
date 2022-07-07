#!/bin/bash

# Checking if golang is installed

if [ $(which go) ];then
	go_version=$(go version | awk -F'go' '{print $3}' |awk -F' ' '{print $1}' | cut -c3-4)
	if [[ $go_version -ge 17 ]];then
		echo -e "\n\033[0;32mGolang Already Installed\033[0m\n";
	else
		echo -e "\n\033[0;32mGolang version less than 1.17! Please install a version >= 1.17 \033[0m\n"
		exit 1
	fi
else
        echo -e "\n\033[1;31mGolang is required! Please install golang >= 1.17\033[0m\n";
	exit 1
fi
	#set the gopath environment variable
	export GOPATH=$HOME/go
        export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
	
	
golang_tools=(
        "https://github.com/tomnomnom/gron"
        "https://github.com/tomnomnom/waybackurls"
        "https://github.com/tomnomnom/httprobe"
        "https://github.com/tomnomnom/assetfinder"
        "https://github.com/tomnomnom/meg"
        "https://github.com/tomnomnom/qsreplace"
        "https://github.com/tomnomnom/anew"
        "https://github.com/tomnomnom/gf"
        "https://github.com/projectdiscovery/subfinder"
        "https://github.com/Emoe/kxss"
        "https://github.com/003random/getJS"
        "https://github.com/0xsha/GoLinkFinder"
        "https://github.com/lc/gau"
        "https://github.com/ffuf/ffuf"
        "https://github.com/hakluke/hakrawler"
	"https://github.com/projectdiscovery/nuclei"
        "https://github.com/hahwul/dalfox"
	"https://github.com/OWASP/Amass"
	"https://github.com/Sam-Lane/subway"
)

for line in ${golang_tools[@]};do
        nohttps=$(echo $line | awk -F// '{print $2}')
        echo -e "\033[1;31mDownloading \033[0m\033[01;32m$nohttps\033[01;37m";
        go install $nohttps@latest &>/dev/null;
done

echo -e "\n\033[1;31mInstalled tools\033[0m\n"

for line in ${golang_tools[@]};do
	tool=$(echo $line | cut -d "/" -f 5)
        if [ $(which $tool 2>/dev/null) ];then
        	echo -e "$tool\033[0;32m [*] Installed\033[0m"
        else
        	echo -e "$tool\033[1;31m [!] Not installed \033[0m"
        	echo -e "\033[1;31mRetrying to install $tool... \033[0m"
               	if [ ! -d ~/tools ];then
                	mkdir ~/tools
			cd ~/tools
                else
	             	cd ~/tools
               	fi
		if [ ! -d $tool ];then
			git clone $line &>/dev/null
		fi
		cd $tool
		min=${tool,,}
		find_dir=$(find . -name "cmd")
		if [ ! -d $find_dir ];then
			find_main=$(find . -name "main.go" | awk -F'main.go' '{print $1}')
		
			cd $find_main && go build -o $tool .
			cp $tool ~/go/bin/
		else
			cd $find_dir
			mgo=$(find . -iname "$tool")
			cd $mgo && go build -o $min . &>/dev/null
			cp $min ~/go/bin/

		fi
		if [ $(which $min 2>/dev/null) ];then
				echo -e "$tool\033[0;32m [*] Installed\033[0m"
 	        	else
                 		echo -e "$tool\033[1;31m [!] Still Not Installed \033[0"
			fi
				

       fi
done
