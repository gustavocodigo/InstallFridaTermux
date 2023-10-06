# InstallFridaTermux
A simple script to install frida in termux

commands:

```
apt update && apt upgrade

pkg install git

git clone https://github.com/gustavocodigo/InstallFridaTermux/

cd ./InstallFridaTermux

chmod +x ./install.sh

./install.sh

```



the version frida for is:
16.1.3

You can change the url in the sh file to download others versions 😀 !

check-in frida version after installing:
```
frida --version
```


this script works for:

armv7, aarch64
