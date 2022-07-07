## Bug Bounty and Pentesting Essentials Tools

Made to install some bug bounty/pentest tools... **In progress!**


### How to Install
```
sudo apt update
sudo apt upgrade -y
sudo apt install golang-go //if golang was installed manually, ignore this!
./install
```
It's important to remember that is needed golang >= 1.17. If apt install a old version the tool will not work, so is higly recommended to install manually!

#### Golang
Download Latest golang version
- [Golang Latest Version](https://go.dev/doc/install)

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
