#!/bin/bash
apt update && apt upgrade -y

apt install python3 wget -y

mkdir "frida-core"


if [[ $(getprop ro.product.cpu.abi) == "arm64"* ]]; then
    FRIDA_CORE_URL='https://github.com/frida/frida/releases/download/16.1.3/frida-core-devkit-16.1.3-android-arm64.tar.xz'
else
    FRIDA_CORE_URL='https://github.com/frida/frida/releases/download/16.1.3/frida-core-devkit-16.1.3-android-arm.tar.xz'
fi

wget $FRIDA_CORE_URL -O "./frida-core/frida-core.tar.xz"
tar -xf  "./frida-core/frida-core.tar.xz" -C "./frida-core"
cd "./frida-core"

export FRIDA_CORE_DEVKIT=$(pwd)

#remove to install latest version, avoid erros on frida installation

echo "y" | pip uninstall pygments
pip install pygments

pip install frida-tools
cd ".."

rm -rf "./frida-core"


echo "Script Done !"