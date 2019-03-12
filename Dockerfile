FROM ubuntu:16.04

RUN dpkg --add-architecture i386
RUN apt-get update -q
RUN apt-get install -y adb fastboot coreutils usbutils curl wget zip xz-utils python-lxml python-setuptools python-pexpect aapt lib32z1-dev libc6-dev-i386 lib32gcc1 libc6:i386 libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 python-dev python-protobuf protobuf-compiler python-virtualenv python-pip python-pexpect psmisc openjdk-9-jdk-headless

ADD http://snapshots.linaro.org/96boards/hikey/linaro/aosp-master/1153/android-cts.zip /home/
WORKDIR /home
RUN unzip android-cts.zip
