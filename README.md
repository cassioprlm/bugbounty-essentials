## Bug Bounty and Pentesting Essential Tools

Made to install some bug bounty/pentest tools... **In progress!**

### Install Golang manually
Download the golang latest version
- [Golang](https://go.dev/doc/install)

1. Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go: 
```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz // (You may need to run the command as root or through sudo).
```
2. Set PATH environment variable and put it on .bashrc!
```
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```
3. Verify that you've installed Go by opening a command prompt and typing the following command: 
```
go version
```
4. Just run the tool
```
./install.sh
```
### Install golang from Package Manager

It's important to remember that is needed golang >= 1.17. If the apt install a old version the tool will not work, so is recommended to pay attention on this step!

- Debian
```
sudo apt update
sudo apt upgrade -y
sudo apt install golang-go //if golang was installed manually, ignore this!
```
- Arch Linux
```
sudo pacman -Syu
sudo pacman -S go 
go version 

```
Set PATH environment variable and put it on .bashrc!
```
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```
And finally run the tool
```
./install.sh
```

#### Tools that will be installed

- gron
- waybackurls
- httprobe
- assetfinder
- meg
- qsreplace
- anew
- gf
- subfinder
- kxss
- getJS
- GoLinkFinder
- gau
- ffuf
- hakrawler
- nuclei
- dalfox
- Amass
- subway
