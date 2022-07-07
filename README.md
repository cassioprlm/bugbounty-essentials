## Bug Bounty and Pentesting Essential Tools

Made to install some bug bounty/pentest tools... **In progress!**


### How to Install
- Debian
```
sudo apt update
sudo apt upgrade -y
sudo apt install golang-go //if golang was installed manually, ignore this!
./install
```
- Arch Linux
```
sudo pacman -Syu
sudo pacman -S go //if golang was installed manually, ignore this!
go version // for check if golang has installed and verify the version
./install
```
It's important to remember that is needed golang >= 1.17. If the apt install a old version the tool will not work, so is recommended to pay attention on this step!

### Install Golang manually
Download the golang latest version
- [Golang](https://go.dev/doc/install)

1. Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go: 
```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz // (You may need to run the command as root or through sudo).
```
2. Add /usr/local/go/bin to the PATH environment variable. 
```
export PATH=$PATH:/usr/local/go/bin
```
3. Verify that you've installed Go by opening a command prompt and typing the following command: 
```
go version
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
