# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond on git:master x [17:33:55]
$ git clone git@github.com:Ostico/docker_matecat.git
Cloning into 'docker_matecat'...
remote: Counting objects: 371, done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 371 (delta 0), reused 4 (delta 0), pack-reused 360
Receiving objects: 100% (371/371), 28.77 MiB | 4.26 MiB/s, done.
Resolving deltas: 100% (209/209), done.
Checking connectivity... done.

# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond on git:master x [17:35:35]
$ git clone -b v2.2.2b --single-branch git@github.com:matecat/MateCat.git
Cloning into 'MateCat'...
remote: Counting objects: 117172, done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 117172 (delta 14), reused 10 (delta 8), pack-reused 117147
Receiving objects: 100% (117172/117172), 55.66 MiB | 6.93 MiB/s, done.
Resolving deltas: 100% (84681/84681), done.
Checking connectivity... done.
Note: checking out '9dc2f7a988ec495d19139dffbc26600da344455f'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b <new-branch-name>

# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond/MateCat on git:9dc2f7a o [17:51:31]
$ netstat -ntulp | grep -E '8732|6379|61613|8161|3306|80|7788' 
(Nem todos os processos puderam ser identificados, informações sobre processos
 de outrem não serão mostrados, você deve ser root para vê-los todos.)
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               OUÇA       -               
udp        0      0 0.0.0.0:26880           0.0.0.0:*                           -     

# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond/MateCat on git:9dc2f7a o [17:53:46]
$ sudo service mysql stop

# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond/MateCat on git:9dc2f7a o [17:54:23]
$ sudo netstat -ntulp | grep -E ':8732|:6379|:61613|:8161|:3306|:80|:7788' 

# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond on git:master x [17:41:21]
$ docker-compose up
Creating network "matecat-playgrond_matecat-network" with driver "bridge"
ERROR: cannot create network a7b506f358de6eefd5fea674975dddef018489700b21919f793a8c74dec931d5 (br-a7b506f358de): conflicts with network 5842a58773b90798f6d1c895be3eb4220db2c14fca8ca850636e184462900df1 (br-5842a58773b9): networks have overlapping IPv4


# fititnt at bravo in /alligo/code/fititnt/matecat-playgrond on git:master x [17:56:47]
$ docker-compose up
Creating network "matecat-playgrond_matecat-network" with driver "bridge"
Building filters
Step 1/8 : FROM maven:3.3.3-jdk-8
3.3.3-jdk-8: Pulling from library/maven
5c90d4a2d1a8: Pull complete
ab30c63719b1: Pull complete
c6072700a242: Pull complete
5f444d070427: Pull complete
620b5227cf38: Pull complete
3cfd33220efa: Pull complete
864a98a84dd2: Pull complete
734cc28150de: Pull complete
9d837ce35c41: Pull complete
Digest: sha256:518b1cc95440282f98881aaa4da85e0dd8eca419e4f1e62bd3b28eaf6ce52f9b
Status: Downloaded newer image for maven:3.3.3-jdk-8
 ---> baadc9c8b0ce
Step 2/8 : RUN apt-get update
 ---> Running in f7795cfd1305
Get:1 http://security.debian.org jessie/updates InRelease [44.9 kB]
Get:2 http://security.debian.org jessie/updates/main amd64 Packages [592 kB]
Ign http://httpredir.debian.org jessie InRelease
Get:3 http://httpredir.debian.org jessie-updates InRelease [145 kB]
Get:4 http://httpredir.debian.org jessie-backports InRelease [166 kB]
Get:5 http://httpredir.debian.org jessie Release.gpg [2420 B]
Get:6 http://httpredir.debian.org jessie Release [148 kB]
Get:7 http://httpredir.debian.org jessie-updates/main amd64 Packages [23.0 kB]
Get:8 http://httpredir.debian.org jessie-backports/main amd64 Packages [1172 kB]
Get:9 http://httpredir.debian.org jessie/main amd64 Packages [9098 kB]
Fetched 11.4 MB in 7s (1499 kB/s)
Reading package lists...
Removing intermediate container f7795cfd1305
 ---> e39ece06414b
Step 3/8 : RUN apt-get install -y git
 ---> Running in 3b70299f2a0e
Reading package lists...
Building dependency tree...
Reading state information...
Suggested packages:
  gettext-base git-daemon-run git-daemon-sysvinit git-doc git-el git-email
  git-gui gitk gitweb git-arch git-cvs git-mediawiki git-svn
Recommended packages:
  patch less rsync
The following packages will be upgraded:
  git
1 upgraded, 0 newly installed, 0 to remove and 122 not upgraded.
Need to get 3707 kB of archives.
After this operation, 362 kB of additional disk space will be used.
Get:1 http://httpredir.debian.org/debian/ jessie/main git amd64 1:2.1.4-2.1+deb8u6 [3707 kB]
debconf: delaying package configuration, since apt-utils is not installed
Fetched 3707 kB in 1s (2561 kB/s)
(Reading database ... 17556 files and directories currently installed.)
Preparing to unpack .../git_1%3a2.1.4-2.1+deb8u6_amd64.deb ...
Unpacking git (1:2.1.4-2.1+deb8u6) over (1:2.1.4-2.1+deb8u2) ...
Setting up git (1:2.1.4-2.1+deb8u6) ...
Removing intermediate container 3b70299f2a0e
 ---> e0f561705d0d
Step 4/8 : COPY filters-1.2.2.jar /tmp/filters-1.2.2.jar
 ---> 9b84d9c6cc94
Step 5/8 : CMD ["/tmp/startFilter.sh"]
 ---> Running in 920640f23b77
Removing intermediate container 920640f23b77
 ---> 50e940a41693
Step 6/8 : COPY startFilter.sh /tmp/startFilter.sh
 ---> 862eef4179d8
Step 7/8 : RUN chmod +x /tmp/startFilter.sh
 ---> Running in b65323285bd7
Removing intermediate container b65323285bd7
 ---> 076bafec4570
Step 8/8 : CMD ["/tmp/startFilter.sh"]
 ---> Running in ccfb7729b248
Removing intermediate container ccfb7729b248
 ---> a7ad10e2bfb1
Successfully built a7ad10e2bfb1
Successfully tagged matecat-playgrond_filters:latest
WARNING: Image for service filters was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Building amq
Step 1/20 : FROM ostico/trusty-base:latest
latest: Pulling from ostico/trusty-base
943c334059c7: Pull complete
a1acf99303d2: Pull complete
27616aacb7b3: Pull complete
35d12cd1c9fc: Pull complete
a3ed95caeb02: Pull complete
53fa5441d438: Pull complete
a9207d852088: Pull complete
f97c2e5c1534: Pull complete
3485b9e7dec2: Pull complete
53db468a9aef: Pull complete
14077c98c57f: Pull complete
bc77f15d9591: Pull complete
d90837eed12b: Pull complete
Digest: sha256:f28238431000651f9516fa7878603ce99e75e763e667163e8ba915209867a344
Status: Downloaded newer image for ostico/trusty-base:latest
 ---> 1400f28c31cd
Step 2/20 : ENV JAVA_OPTS '-Xmx256M'
 ---> Running in a6cdfe46b657
Removing intermediate container a6cdfe46b657
 ---> c105ddb3021c
Step 3/20 : RUN dpkg-divert --local --rename --add /sbin/initctl
 ---> Running in 9fc4aa6159a1
Leaving 'local diversion of /sbin/initctl to /sbin/initctl.distrib'
Removing intermediate container 9fc4aa6159a1
 ---> b8f4957cd552
Step 4/20 : RUN ln -snvf /bin/true /sbin/initctl
 ---> Running in 1ad43d01a4d4
'/sbin/initctl' -> '/bin/true'
Removing intermediate container 1ad43d01a4d4
 ---> fd9a7b89956f
Step 5/20 : ENV DEBIAN_FRONTEND noninteractive
 ---> Running in a02fb5a9b264
Removing intermediate container a02fb5a9b264
 ---> 3a8ba0e068da
Step 6/20 : RUN apt-get update && apt-get install -y software-properties-common python-software-properties &&     add-apt-repository -y ppa:webupd8team/java &&     apt-get update
 ---> Running in 5a09821689ef
Ign http://archive.ubuntu.com trusty InRelease
Get:1 http://archive.ubuntu.com trusty-updates InRelease [65.9 kB]
Get:2 http://archive.ubuntu.com trusty-security InRelease [65.9 kB]
Hit http://archive.ubuntu.com trusty Release.gpg
Hit http://archive.ubuntu.com trusty Release
Get:3 http://archive.ubuntu.com trusty-updates/main Sources [515 kB]
Get:4 http://archive.ubuntu.com trusty-updates/restricted Sources [6449 B]
Get:5 http://archive.ubuntu.com trusty-updates/universe Sources [254 kB]
Get:6 http://archive.ubuntu.com trusty-updates/main amd64 Packages [1353 kB]
Get:7 http://archive.ubuntu.com trusty-updates/restricted amd64 Packages [21.4 kB]
Get:8 http://archive.ubuntu.com trusty-updates/universe amd64 Packages [592 kB]
Get:9 http://archive.ubuntu.com trusty-security/main Sources [201 kB]
Get:10 http://archive.ubuntu.com trusty-security/restricted Sources [5050 B]
Get:11 http://archive.ubuntu.com trusty-security/universe Sources [89.7 kB]
Get:12 http://archive.ubuntu.com trusty-security/main amd64 Packages [929 kB]
Get:13 http://archive.ubuntu.com trusty-security/restricted amd64 Packages [18.1 kB]
Get:14 http://archive.ubuntu.com trusty-security/universe amd64 Packages [297 kB]
Hit http://archive.ubuntu.com trusty/main Sources
Hit http://archive.ubuntu.com trusty/restricted Sources
Hit http://archive.ubuntu.com trusty/universe Sources
Hit http://archive.ubuntu.com trusty/main amd64 Packages
Hit http://archive.ubuntu.com trusty/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty/universe amd64 Packages
Fetched 4412 kB in 11s (399 kB/s)
Reading package lists...
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-updates_restricted_binary-amd64_Packages.gz is not what the server reported 21381 23467
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-security_restricted_binary-amd64_Packages.gz is not what the server reported 18072 20231
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  gir1.2-glib-2.0 iso-codes libdbus-glib-1-2 libgirepository-1.0-1
  libglib2.0-0 libglib2.0-data python-apt python-apt-common python-pycurl
  python3-apt python3-dbus python3-gi python3-pycurl
  python3-software-properties shared-mime-info unattended-upgrades xz-utils
Suggested packages:
  isoquery python-apt-dbg python-gtk2 python-vte python-apt-doc
  libcurl4-gnutls-dev python-pycurl-dbg python3-apt-dbg python-dbus-doc
  python3-dbus-dbg python3-pycurl-dbg bsd-mailx mail-transport-agent
The following NEW packages will be installed:
  gir1.2-glib-2.0 iso-codes libdbus-glib-1-2 libgirepository-1.0-1
  libglib2.0-0 libglib2.0-data python-apt python-apt-common python-pycurl
  python-software-properties python3-apt python3-dbus python3-gi
  python3-pycurl python3-software-properties shared-mime-info
  software-properties-common unattended-upgrades xz-utils
0 upgraded, 19 newly installed, 0 to remove and 127 not upgraded.
Need to get 4725 kB of archives.
After this operation, 29.6 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libglib2.0-0 amd64 2.40.2-0ubuntu1 [1058 kB]
Get:2 http://archive.ubuntu.com/ubuntu/ trusty/main libdbus-glib-1-2 amd64 0.100.2-1 [74.1 kB]
Get:3 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgirepository-1.0-1 amd64 1.40.0-1ubuntu0.2 [85.6 kB]
Get:4 http://archive.ubuntu.com/ubuntu/ trusty-updates/main gir1.2-glib-2.0 amd64 1.40.0-1ubuntu0.2 [124 kB]
Get:5 http://archive.ubuntu.com/ubuntu/ trusty/main iso-codes all 3.52-1 [2073 kB]
Get:6 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libglib2.0-data all 2.40.2-0ubuntu1 [116 kB]
Get:7 http://archive.ubuntu.com/ubuntu/ trusty-updates/main python-apt-common all 0.9.3.5ubuntu2 [16.6 kB]
Get:8 http://archive.ubuntu.com/ubuntu/ trusty-updates/main python3-apt amd64 0.9.3.5ubuntu2 [139 kB]
Get:9 http://archive.ubuntu.com/ubuntu/ trusty/main python3-dbus amd64 1.2.0-2build2 [82.1 kB]
Get:10 http://archive.ubuntu.com/ubuntu/ trusty-updates/main python3-gi amd64 3.12.0-1ubuntu1 [154 kB]
Get:11 http://archive.ubuntu.com/ubuntu/ trusty/main shared-mime-info amd64 1.2-0ubuntu3 [415 kB]
Get:12 http://archive.ubuntu.com/ubuntu/ trusty-updates/main python-apt amd64 0.9.3.5ubuntu2 [141 kB]
Get:13 http://archive.ubuntu.com/ubuntu/ trusty/main python-pycurl amd64 7.19.3-0ubuntu3 [47.9 kB]
Get:14 http://archive.ubuntu.com/ubuntu/ trusty/main xz-utils amd64 5.1.1alpha+20120614-2ubuntu2 [78.8 kB]
Get:15 http://archive.ubuntu.com/ubuntu/ trusty-updates/main unattended-upgrades all 0.82.1ubuntu2.5 [25.6 kB]
Get:16 http://archive.ubuntu.com/ubuntu/ trusty-updates/universe python-software-properties all 0.92.37.8 [19.7 kB]
Get:17 http://archive.ubuntu.com/ubuntu/ trusty/main python3-pycurl amd64 7.19.3-0ubuntu3 [47.5 kB]
Get:18 http://archive.ubuntu.com/ubuntu/ trusty-updates/main python3-software-properties all 0.92.37.8 [19.2 kB]
Get:19 http://archive.ubuntu.com/ubuntu/ trusty-updates/main software-properties-common all 0.92.37.8 [9384 B]
Preconfiguring packages ...
Fetched 4725 kB in 7s (620 kB/s)
Selecting previously unselected package libglib2.0-0:amd64.
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../libglib2.0-0_2.40.2-0ubuntu1_amd64.deb ...
Unpacking libglib2.0-0:amd64 (2.40.2-0ubuntu1) ...
Selecting previously unselected package libdbus-glib-1-2:amd64.
Preparing to unpack .../libdbus-glib-1-2_0.100.2-1_amd64.deb ...
Unpacking libdbus-glib-1-2:amd64 (0.100.2-1) ...
Selecting previously unselected package libgirepository-1.0-1.
Preparing to unpack .../libgirepository-1.0-1_1.40.0-1ubuntu0.2_amd64.deb ...
Unpacking libgirepository-1.0-1 (1.40.0-1ubuntu0.2) ...
Selecting previously unselected package gir1.2-glib-2.0.
Preparing to unpack .../gir1.2-glib-2.0_1.40.0-1ubuntu0.2_amd64.deb ...
Unpacking gir1.2-glib-2.0 (1.40.0-1ubuntu0.2) ...
Selecting previously unselected package iso-codes.
Preparing to unpack .../iso-codes_3.52-1_all.deb ...
Unpacking iso-codes (3.52-1) ...
Selecting previously unselected package libglib2.0-data.
Preparing to unpack .../libglib2.0-data_2.40.2-0ubuntu1_all.deb ...
Unpacking libglib2.0-data (2.40.2-0ubuntu1) ...
Selecting previously unselected package python-apt-common.
Preparing to unpack .../python-apt-common_0.9.3.5ubuntu2_all.deb ...
Unpacking python-apt-common (0.9.3.5ubuntu2) ...
Selecting previously unselected package python3-apt.
Preparing to unpack .../python3-apt_0.9.3.5ubuntu2_amd64.deb ...
Unpacking python3-apt (0.9.3.5ubuntu2) ...
Selecting previously unselected package python3-dbus.
Preparing to unpack .../python3-dbus_1.2.0-2build2_amd64.deb ...
Unpacking python3-dbus (1.2.0-2build2) ...
Selecting previously unselected package python3-gi.
Preparing to unpack .../python3-gi_3.12.0-1ubuntu1_amd64.deb ...
Unpacking python3-gi (3.12.0-1ubuntu1) ...
Selecting previously unselected package shared-mime-info.
Preparing to unpack .../shared-mime-info_1.2-0ubuntu3_amd64.deb ...
Unpacking shared-mime-info (1.2-0ubuntu3) ...
Selecting previously unselected package python-apt.
Preparing to unpack .../python-apt_0.9.3.5ubuntu2_amd64.deb ...
Unpacking python-apt (0.9.3.5ubuntu2) ...
Selecting previously unselected package python-pycurl.
Preparing to unpack .../python-pycurl_7.19.3-0ubuntu3_amd64.deb ...
Unpacking python-pycurl (7.19.3-0ubuntu3) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../xz-utils_5.1.1alpha+20120614-2ubuntu2_amd64.deb ...
Unpacking xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
Selecting previously unselected package unattended-upgrades.
Preparing to unpack .../unattended-upgrades_0.82.1ubuntu2.5_all.deb ...
Unpacking unattended-upgrades (0.82.1ubuntu2.5) ...
Selecting previously unselected package python-software-properties.
Preparing to unpack .../python-software-properties_0.92.37.8_all.deb ...
Unpacking python-software-properties (0.92.37.8) ...
Selecting previously unselected package python3-pycurl.
Preparing to unpack .../python3-pycurl_7.19.3-0ubuntu3_amd64.deb ...
Unpacking python3-pycurl (7.19.3-0ubuntu3) ...
Selecting previously unselected package python3-software-properties.
Preparing to unpack .../python3-software-properties_0.92.37.8_all.deb ...
Unpacking python3-software-properties (0.92.37.8) ...
Selecting previously unselected package software-properties-common.
Preparing to unpack .../software-properties-common_0.92.37.8_all.deb ...
Unpacking software-properties-common (0.92.37.8) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up libglib2.0-0:amd64 (2.40.2-0ubuntu1) ...
No schema files found: doing nothing.
Setting up libdbus-glib-1-2:amd64 (0.100.2-1) ...
Setting up libgirepository-1.0-1 (1.40.0-1ubuntu0.2) ...
Setting up gir1.2-glib-2.0 (1.40.0-1ubuntu0.2) ...
Setting up iso-codes (3.52-1) ...
Setting up libglib2.0-data (2.40.2-0ubuntu1) ...
Setting up python-apt-common (0.9.3.5ubuntu2) ...
Setting up python3-apt (0.9.3.5ubuntu2) ...
Setting up python3-dbus (1.2.0-2build2) ...
Setting up python3-gi (3.12.0-1ubuntu1) ...
Setting up shared-mime-info (1.2-0ubuntu3) ...
Setting up python-apt (0.9.3.5ubuntu2) ...
Setting up python-pycurl (7.19.3-0ubuntu3) ...
Setting up xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
Setting up unattended-upgrades (0.82.1ubuntu2.5) ...
Setting up python3-pycurl (7.19.3-0ubuntu3) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up python-software-properties (0.92.37.8) ...
Setting up python3-software-properties (0.92.37.8) ...
Setting up software-properties-common (0.92.37.8) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
gpg: keyring `/tmp/tmpztpqwopy/secring.gpg' created
gpg: keyring `/tmp/tmpztpqwopy/pubring.gpg' created
gpg: requesting key EEA14886 from hkp server keyserver.ubuntu.com
gpg: /tmp/tmpztpqwopy/trustdb.gpg: trustdb created
gpg: key EEA14886: public key "Launchpad VLC" imported
gpg: no ultimately trusted keys found
gpg: Total number processed: 1
gpg:               imported: 1  (RSA: 1)
OK
Ign http://archive.ubuntu.com trusty InRelease
Get:1 http://ppa.launchpad.net trusty InRelease [15.5 kB]
Hit http://archive.ubuntu.com trusty-updates InRelease
Hit http://archive.ubuntu.com trusty-security InRelease
Hit http://archive.ubuntu.com trusty Release.gpg
Hit http://archive.ubuntu.com trusty Release
Get:2 http://ppa.launchpad.net trusty/main amd64 Packages [1557 B]
Hit http://archive.ubuntu.com trusty-updates/main Sources
Hit http://archive.ubuntu.com trusty-updates/restricted Sources
Hit http://archive.ubuntu.com trusty-updates/universe Sources
Hit http://archive.ubuntu.com trusty-updates/main amd64 Packages
Hit http://archive.ubuntu.com trusty-updates/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty-updates/universe amd64 Packages
Hit http://archive.ubuntu.com trusty-security/main Sources
Hit http://archive.ubuntu.com trusty-security/restricted Sources
Hit http://archive.ubuntu.com trusty-security/universe Sources
Hit http://archive.ubuntu.com trusty-security/main amd64 Packages
Hit http://archive.ubuntu.com trusty-security/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty-security/universe amd64 Packages
Hit http://archive.ubuntu.com trusty/main Sources
Hit http://archive.ubuntu.com trusty/restricted Sources
Hit http://archive.ubuntu.com trusty/universe Sources
Hit http://archive.ubuntu.com trusty/main amd64 Packages
Hit http://archive.ubuntu.com trusty/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty/universe amd64 Packages
Fetched 17.0 kB in 7s (2223 B/s)
Reading package lists...
Removing intermediate container 5a09821689ef
 ---> 995b85931ae5
Step 7/20 : RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
 ---> Running in bc86446d40b1
Removing intermediate container bc86446d40b1
 ---> 5415f3c11b78
Step 8/20 : RUN apt-get install -y --force-yes oracle-java8-installer &&     apt-get install -y --force-yes oracle-java8-set-default
 ---> Running in def90ba1998c
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  binutils gsfonts gsfonts-x11 java-common libfontenc1 libfreetype6 libxfont1
  oracle-java8-set-default x11-common xfonts-encodings xfonts-utils
Suggested packages:
  binutils-doc default-jre equivs binfmt-support visualvm ttf-baekmuk
  ttf-unfonts ttf-unfonts-core ttf-kochi-gothic ttf-sazanami-gothic
  ttf-kochi-mincho ttf-sazanami-mincho ttf-arphic-uming firefox firefox-2
  iceweasel mozilla-firefox iceape-browser mozilla-browser epiphany-gecko
  epiphany-webkit epiphany-browser galeon midbrowser moblin-web-browser
  xulrunner xulrunner-1.9 konqueror chromium-browser midori google-chrome
The following NEW packages will be installed:
  binutils gsfonts gsfonts-x11 java-common libfontenc1 libfreetype6 libxfont1
  oracle-java8-installer oracle-java8-set-default x11-common xfonts-encodings
  xfonts-utils
0 upgraded, 12 newly installed, 0 to remove and 127 not upgraded.
Need to get 6750 kB of archives.
After this operation, 20.0 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu/ trusty/main libfontenc1 amd64 1:1.1.2-1 [15.6 kB]
Get:2 http://ppa.launchpad.net/webupd8team/java/ubuntu/ trusty/main oracle-java8-installer all 8u171-1~webupd8~1 [32.8 kB]
Get:3 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libfreetype6 amd64 2.5.2-1ubuntu2.8 [304 kB]
Get:4 http://ppa.launchpad.net/webupd8team/java/ubuntu/ trusty/main oracle-java8-set-default all 8u171-1~webupd8~1 [6874 B]
Get:5 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libxfont1 amd64 1:1.4.7-1ubuntu0.4 [95.1 kB]
Get:6 http://archive.ubuntu.com/ubuntu/ trusty-updates/main binutils amd64 2.24-5ubuntu14.2 [2076 kB]
Get:7 http://archive.ubuntu.com/ubuntu/ trusty/main java-common all 0.51 [130 kB]
Get:8 http://archive.ubuntu.com/ubuntu/ trusty/main gsfonts all 1:8.11+urwcyr1.0.7~pre44-4.2ubuntu1 [3374 kB]
Get:9 http://archive.ubuntu.com/ubuntu/ trusty-updates/main x11-common all 1:7.7+1ubuntu8.1 [49.5 kB]
Get:10 http://archive.ubuntu.com/ubuntu/ trusty/main xfonts-encodings all 1:1.0.4-1ubuntu1 [583 kB]
Get:11 http://archive.ubuntu.com/ubuntu/ trusty/main xfonts-utils amd64 1:7.7+1 [73.9 kB]
Get:12 http://archive.ubuntu.com/ubuntu/ trusty/main gsfonts-x11 all 0.22 [9108 B]
Preconfiguring packages ...
Fetched 6750 kB in 4s (1424 kB/s)
Selecting previously unselected package libfontenc1:amd64.
(Reading database ... 20729 files and directories currently installed.)
Preparing to unpack .../libfontenc1_1%3a1.1.2-1_amd64.deb ...
Unpacking libfontenc1:amd64 (1:1.1.2-1) ...
Selecting previously unselected package libfreetype6:amd64.
Preparing to unpack .../libfreetype6_2.5.2-1ubuntu2.8_amd64.deb ...
Unpacking libfreetype6:amd64 (2.5.2-1ubuntu2.8) ...
Selecting previously unselected package libxfont1:amd64.
Preparing to unpack .../libxfont1_1%3a1.4.7-1ubuntu0.4_amd64.deb ...
Unpacking libxfont1:amd64 (1:1.4.7-1ubuntu0.4) ...
Selecting previously unselected package binutils.
Preparing to unpack .../binutils_2.24-5ubuntu14.2_amd64.deb ...
Unpacking binutils (2.24-5ubuntu14.2) ...
Selecting previously unselected package java-common.
Preparing to unpack .../java-common_0.51_all.deb ...
Unpacking java-common (0.51) ...
Setting up binutils (2.24-5ubuntu14.2) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
Selecting previously unselected package oracle-java8-installer.
(Reading database ... 20982 files and directories currently installed.)
Preparing to unpack .../oracle-java8-installer_8u171-1~webupd8~1_all.deb ...
oracle-license-v1-1 license has already been accepted
Unpacking oracle-java8-installer (8u171-1~webupd8~1) ...
Processing triggers for mime-support (3.54ubuntu1.1) ...
Processing triggers for shared-mime-info (1.2-0ubuntu3) ...
Setting up java-common (0.51) ...
Setting up oracle-java8-installer (8u171-1~webupd8~1) ...
No /var/cache/oracle-jdk8-installer/wgetrc file found.
Creating /var/cache/oracle-jdk8-installer/wgetrc and
using default oracle-java8-installer wgetrc settings for it.
Downloading Oracle Java 8...
--2018-07-07 21:00:57--  http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz
Resolving download.oracle.com (download.oracle.com)... 23.77.113.227
Connecting to download.oracle.com (download.oracle.com)|23.77.113.227|:80... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://edelivery.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz [following]
--2018-07-07 21:00:57--  https://edelivery.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz
Resolving edelivery.oracle.com (edelivery.oracle.com)... 23.77.120.171, 2600:1419:a000:196::2d3e, 2600:1419:a000:187::2d3e
Connecting to edelivery.oracle.com (edelivery.oracle.com)|23.77.120.171|:443... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz?AuthParam=1530997377_e69930bfa5a8039c48493bc28c36bd02 [following]
--2018-07-07 21:00:57--  http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz?AuthParam=1530997377_e69930bfa5a8039c48493bc28c36bd02
Connecting to download.oracle.com (download.oracle.com)|23.77.113.227|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 190890122 (182M) [application/x-gzip]
Saving to: 'jdk-8u171-linux-x64.tar.gz'

     0K ........ ........ ........ ........ ........ ........  1% 3.45M 52s
  3072K ........ ........ ........ ........ ........ ........  3% 12.0M 33s
  6144K ........ ........ ........ ........ ........ ........  4% 3.47M 38s
  9216K ........ ........ ........ ........ ........ ........  6% 3.68M 40s
 12288K ........ ........ ........ ........ ........ ........  8% 3.47M 41s
 15360K ........ ........ ........ ........ ........ ........  9% 3.66M 41s
 18432K ........ ........ ........ ........ ........ ........ 11% 3.57M 41s
 21504K ........ ........ ........ ........ ........ ........ 13% 13.0M 37s
 24576K ........ ........ ........ ........ ........ ........ 14% 3.65M 37s
 27648K ........ ........ ........ ........ ........ ........ 16% 3.65M 36s
 30720K ........ ........ ........ ........ ........ ........ 18% 12.2M 34s
 33792K ........ ........ ........ ........ ........ ........ 19% 12.0M 31s
 36864K ........ ........ ........ ........ ........ ........ 21% 3.42M 31s
 39936K ........ ........ ........ ........ ........ ........ 23% 3.65M 31s
 43008K ........ ........ ........ ........ ........ ........ 24% 4.35M 31s
 46080K ........ ........ ........ ........ ........ ........ 26% 11.0M 29s
 49152K ........ ........ ........ ........ ........ ........ 28% 3.60M 29s
 52224K ........ ........ ........ ........ ........ ........ 29% 3.48M 29s
 55296K ........ ........ ........ ........ ........ ........ 31% 3.53M 28s
 58368K ........ ........ ........ ........ ........ ........ 32% 12.4M 27s
 61440K ........ ........ ........ ........ ........ ........ 34% 10.8M 25s
 64512K ........ ........ ........ ........ ........ ........ 36% 3.56M 25s
 67584K ........ ........ ........ ........ ........ ........ 37% 12.8M 24s
 70656K ........ ........ ........ ........ ........ ........ 39% 13.7M 22s
 73728K ........ ........ ........ ........ ........ ........ 41% 3.60M 22s
 76800K ........ ........ ........ ........ ........ ........ 42% 3.59M 22s
 79872K ........ ........ ........ ........ ........ ........ 44% 12.3M 21s
 82944K ........ ........ ........ ........ ........ ........ 46% 13.7M 20s
 86016K ........ ........ ........ ........ ........ ........ 47% 11.9M 19s
 89088K ........ ........ ........ ........ ........ ........ 49% 14.2M 18s
 92160K ........ ........ ........ ........ ........ ........ 51% 13.3M 17s
 95232K ........ ........ ........ ........ ........ ........ 52% 14.6M 16s
 98304K ........ ........ ........ ........ ........ ........ 54% 3.61M 16s
101376K ........ ........ ........ ........ ........ ........ 56% 8.73M 15s
104448K ........ ........ ........ ........ ........ ........ 57% 8.32M 14s
107520K ........ ........ ........ ........ ........ ........ 59% 13.0M 13s
110592K ........ ........ ........ ........ ........ ........ 60% 3.19M 13s
113664K ........ ........ ........ ........ ........ ........ 62% 11.9M 12s
116736K ........ ........ ........ ........ ........ ........ 64% 3.16M 12s
119808K ........ ........ ........ ........ ........ ........ 65% 11.6M 11s
122880K ........ ........ ........ ........ ........ ........ 67% 12.1M 11s
125952K ........ ........ ........ ........ ........ ........ 69% 12.1M 10s
129024K ........ ........ ........ ........ ........ ........ 70% 11.8M 9s
132096K ........ ........ ........ ........ ........ ........ 72% 3.61M 9s
135168K ........ ........ ........ ........ ........ ........ 74% 11.5M 8s
138240K ........ ........ ........ ........ ........ ........ 75% 13.5M 8s
141312K ........ ........ ........ ........ ........ ........ 77% 12.3M 7s
144384K ........ ........ ........ ........ ........ ........ 79% 13.7M 6s
147456K ........ ........ ........ ........ ........ ........ 80% 12.6M 6s
150528K ........ ........ ........ ........ ........ ........ 82% 11.8M 5s
153600K ........ ........ ........ ........ ........ ........ 84% 14.8M 5s
156672K ........ ........ ........ ........ ........ ........ 85% 14.5M 4s
159744K ........ ........ ........ ........ ........ ........ 87% 14.9M 4s
162816K ........ ........ ........ ........ ........ ........ 88% 14.6M 3s
165888K ........ ........ ........ ........ ........ ........ 90% 10.9M 3s
168960K ........ ........ ........ ........ ........ ........ 92% 11.8M 2s
172032K ........ ........ ........ ........ ........ ........ 93% 12.3M 2s
175104K ........ ........ ........ ........ ........ ........ 95% 12.7M 1s
178176K ........ ........ ........ ........ ........ ........ 97% 12.8M 1s
181248K ........ ........ ........ ........ ........ ........ 98% 14.2M 0s
184320K ........ ........ ........ ........                  100% 15.7M=27s

2018-07-07 21:01:25 (6.66 MB/s) - 'jdk-8u171-linux-x64.tar.gz' saved [190890122/190890122]

Download done.
Removing outdated cached downloads...
update-alternatives: error: no alternatives for java
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/ControlPanel to provide /usr/bin/ControlPanel (ControlPanel) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/java to provide /usr/bin/java (java) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/javaws to provide /usr/bin/javaws (javaws) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/jcontrol to provide /usr/bin/jcontrol (jcontrol) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/jjs to provide /usr/bin/jjs (jjs) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/keytool to provide /usr/bin/keytool (keytool) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/orbd to provide /usr/bin/orbd (orbd) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/pack200 to provide /usr/bin/pack200 (pack200) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/policytool to provide /usr/bin/policytool (policytool) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/rmid to provide /usr/bin/rmid (rmid) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/rmiregistry to provide /usr/bin/rmiregistry (rmiregistry) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/servertool to provide /usr/bin/servertool (servertool) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/tnameserv to provide /usr/bin/tnameserv (tnameserv) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/bin/unpack200 to provide /usr/bin/unpack200 (unpack200) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/lib/jexec to provide /usr/bin/jexec (jexec) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/appletviewer to provide /usr/bin/appletviewer (appletviewer) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/extcheck to provide /usr/bin/extcheck (extcheck) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/idlj to provide /usr/bin/idlj (idlj) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jar to provide /usr/bin/jar (jar) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jarsigner to provide /usr/bin/jarsigner (jarsigner) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javac to provide /usr/bin/javac (javac) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javadoc to provide /usr/bin/javadoc (javadoc) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javafxpackager to provide /usr/bin/javafxpackager (javafxpackager) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javah to provide /usr/bin/javah (javah) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javap to provide /usr/bin/javap (javap) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/javapackager to provide /usr/bin/javapackager (javapackager) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jcmd to provide /usr/bin/jcmd (jcmd) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jconsole to provide /usr/bin/jconsole (jconsole) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jdb to provide /usr/bin/jdb (jdb) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jdeps to provide /usr/bin/jdeps (jdeps) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jhat to provide /usr/bin/jhat (jhat) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jinfo to provide /usr/bin/jinfo (jinfo) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jmap to provide /usr/bin/jmap (jmap) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jmc to provide /usr/bin/jmc (jmc) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jps to provide /usr/bin/jps (jps) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jrunscript to provide /usr/bin/jrunscript (jrunscript) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jsadebugd to provide /usr/bin/jsadebugd (jsadebugd) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jstack to provide /usr/bin/jstack (jstack) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jstat to provide /usr/bin/jstat (jstat) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jstatd to provide /usr/bin/jstatd (jstatd) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/jvisualvm to provide /usr/bin/jvisualvm (jvisualvm) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/native2ascii to provide /usr/bin/native2ascii (native2ascii) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/rmic to provide /usr/bin/rmic (rmic) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/schemagen to provide /usr/bin/schemagen (schemagen) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/serialver to provide /usr/bin/serialver (serialver) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/wsgen to provide /usr/bin/wsgen (wsgen) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/wsimport to provide /usr/bin/wsimport (wsimport) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/bin/xjc to provide /usr/bin/xjc (xjc) in auto mode
update-alternatives: using /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libnpjp2.so to provide /usr/lib/mozilla/plugins/libjavaplugin.so (mozilla-javaplugin.so) in auto mode
Oracle JDK 8 installed

#####Important########
To set Oracle JDK8 as default, install the "oracle-java8-set-default" package.
E.g.: sudo apt install oracle-java8-set-default
On Ubuntu systems, oracle-java8-set-default is most probably installed
automatically with this package.
######################

Selecting previously unselected package oracle-java8-set-default.
(Reading database ... 21027 files and directories currently installed.)
Preparing to unpack .../oracle-java8-set-default_8u171-1~webupd8~1_all.deb ...
Unpacking oracle-java8-set-default (8u171-1~webupd8~1) ...
Selecting previously unselected package gsfonts.
Preparing to unpack .../gsfonts_1%3a8.11+urwcyr1.0.7~pre44-4.2ubuntu1_all.deb ...
Unpacking gsfonts (1:8.11+urwcyr1.0.7~pre44-4.2ubuntu1) ...
Selecting previously unselected package x11-common.
Preparing to unpack .../x11-common_1%3a7.7+1ubuntu8.1_all.deb ...
Unpacking x11-common (1:7.7+1ubuntu8.1) ...
Selecting previously unselected package xfonts-encodings.
Preparing to unpack .../xfonts-encodings_1%3a1.0.4-1ubuntu1_all.deb ...
Unpacking xfonts-encodings (1:1.0.4-1ubuntu1) ...
Selecting previously unselected package xfonts-utils.
Preparing to unpack .../xfonts-utils_1%3a7.7+1_amd64.deb ...
Unpacking xfonts-utils (1:7.7+1) ...
Selecting previously unselected package gsfonts-x11.
Preparing to unpack .../gsfonts-x11_0.22_all.deb ...
Unpacking gsfonts-x11 (0.22) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up libfontenc1:amd64 (1:1.1.2-1) ...
Setting up libfreetype6:amd64 (2.5.2-1ubuntu2.8) ...
Setting up libxfont1:amd64 (1:1.4.7-1ubuntu0.4) ...
Setting up oracle-java8-set-default (8u171-1~webupd8~1) ...
Setting up gsfonts (1:8.11+urwcyr1.0.7~pre44-4.2ubuntu1) ...
Setting up x11-common (1:7.7+1ubuntu8.1) ...
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for ureadahead (0.100.0-16) ...
Setting up xfonts-encodings (1:1.0.4-1ubuntu1) ...
Setting up xfonts-utils (1:7.7+1) ...
Setting up gsfonts-x11 (0.22) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
Reading package lists...
Building dependency tree...
Reading state information...
oracle-java8-set-default is already the newest version.
oracle-java8-set-default set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 127 not upgraded.
Removing intermediate container def90ba1998c
 ---> 70f9c16d8e1b
Step 9/20 : RUN cd /tmp/
 ---> Running in 89b8dc622886
Removing intermediate container 89b8dc622886
 ---> e8f61392aa1f
Step 10/20 : RUN wget http://archive.apache.org/dist/activemq/5.13.2/apache-activemq-5.13.2-bin.tar.gz
 ---> Running in dcde3712ec88
--2018-07-07 21:01:58--  http://archive.apache.org/dist/activemq/5.13.2/apache-activemq-5.13.2-bin.tar.gz
Resolving archive.apache.org (archive.apache.org)... 163.172.17.199
Connecting to archive.apache.org (archive.apache.org)|163.172.17.199|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 53675823 (51M) [application/x-gzip]
Saving to: 'apache-activemq-5.13.2-bin.tar.gz'

     0K .......... .......... .......... .......... ..........  0%  110K 7m56s
    50K .......... .......... .......... .......... ..........  0%  219K 5m57s
   100K .......... .......... .......... .......... ..........  0% 28.8M 3m58s
   150K .......... .......... .......... .......... ..........  0% 33.5M 2m59s
   200K .......... .......... .......... .......... ..........  0%  223K 3m10s
   250K .......... .......... .......... .......... ..........  0% 6.42M 2m39s
   300K .......... .......... .......... .......... ..........  0% 23.9M 2m17s
   350K .......... .......... .......... .......... ..........  0% 26.4M 2m0s
   400K .......... .......... .......... .......... ..........  0%  232K 2m11s
   450K .......... .......... .......... .......... ..........  0% 30.7M 1m58s
   500K .......... .......... .......... .......... ..........  1% 12.0M 1m48s
   550K .......... .......... .......... .......... ..........  1% 19.6M 99s
   600K .......... .......... .......... .......... ..........  1% 29.7M 91s
   650K .......... .......... .......... .......... ..........  1% 32.1M 85s
   700K .......... .......... .......... .......... ..........  1% 5.82M 80s
   750K .......... .......... .......... .......... ..........  1% 22.7M 75s
   800K .......... .......... .......... .......... ..........  1% 34.6M 70s
   850K .......... .......... .......... .......... ..........  1%  244K 78s
   900K .......... .......... .......... .......... ..........  1% 3.41M 75s
   950K .......... .......... .......... .......... ..........  1% 26.5M 71s
  1000K .......... .......... .......... .......... ..........  2% 30.6M 68s
  1050K .......... .......... .......... .......... ..........  2% 4.33M 65s
  1100K .......... .......... .......... .......... ..........  2% 30.2M 62s
  1150K .......... .......... .......... .......... ..........  2% 33.6M 60s
  1200K .......... .......... .......... .......... ..........  2% 29.0M 57s
  1250K .......... .......... .......... .......... ..........  2%  200K 65s
  1300K .......... .......... .......... .......... ..........  2% 27.5M 62s
  1350K .......... .......... .......... .......... ..........  2% 5.88M 60s
  1400K .......... .......... .......... .......... ..........  2%  311K 64s
  1450K .......... .......... .......... .......... ..........  2% 46.3M 62s
  1500K .......... .......... .......... .......... ..........  2%  135M 60s
  1550K .......... .......... .......... .......... ..........  3%  172M 58s
  1600K .......... .......... .......... .......... ..........  3% 6.69M 56s
  1650K .......... .......... .......... .......... ..........  3% 4.72M 55s
  1700K .......... .......... .......... .......... ..........  3% 23.4M 53s
  1750K .......... .......... .......... .......... ..........  3% 35.4M 52s
  1800K .......... .......... .......... .......... ..........  3%  140M 50s
  1850K .......... .......... .......... .......... ..........  3%  190M 49s
  1900K .......... .......... .......... .......... ..........  3%  165M 48s
  1950K .......... .......... .......... .......... ..........  3%  162M 46s
  2000K .......... .......... .......... .......... ..........  3%  173M 45s
  2050K .......... .......... .......... .......... ..........  4%  193M 44s
  2100K .......... .......... .......... .......... ..........  4%  139M 43s
  2150K .......... .......... .......... .......... ..........  4%  172M 42s
  2200K .......... .......... .......... .......... ..........  4%  141M 41s
  2250K .......... .......... .......... .......... ..........  4%  149M 40s
  2300K .......... .......... .......... .......... ..........  4%  219M 39s
  2350K .......... .......... .......... .......... ..........  4%  277M 38s
  2400K .......... .......... .......... .......... ..........  4%  307M 38s
  2450K .......... .......... .......... .......... ..........  4%  287M 37s
  2500K .......... .......... .......... .......... ..........  4%  357M 36s
  2550K .......... .......... .......... .......... ..........  4%  352M 35s
  2600K .......... .......... .......... .......... ..........  5%  323M 35s
  2650K .......... .......... .......... .......... ..........  5% 6.54M 34s
  2700K .......... .......... .......... .......... ..........  5% 26.7M 34s
  2750K .......... .......... .......... .......... ..........  5% 29.4M 33s
  2800K .......... .......... .......... .......... ..........  5% 32.7M 32s
  2850K .......... .......... .......... .......... ..........  5% 6.39M 32s
  2900K .......... .......... .......... .......... ..........  5% 14.7M 31s
  2950K .......... .......... .......... .......... ..........  5% 7.84M 31s
  3000K .......... .......... .......... .......... ..........  5% 28.5M 30s
  3050K .......... .......... .......... .......... ..........  5%  258K 33s
  3100K .......... .......... .......... .......... ..........  6% 31.6M 32s
  3150K .......... .......... .......... .......... ..........  6% 30.0M 32s
  3200K .......... .......... .......... .......... ..........  6% 19.3M 31s
  3250K .......... .......... .......... .......... ..........  6% 24.7M 31s
  3300K .......... .......... .......... .......... ..........  6% 28.2M 30s
  3350K .......... .......... .......... .......... ..........  6% 33.0M 30s
  3400K .......... .......... .......... .......... ..........  6% 6.00M 30s
  3450K .......... .......... .......... .......... ..........  6% 20.9M 29s
  3500K .......... .......... .......... .......... ..........  6% 24.6M 29s
  3550K .......... .......... .......... .......... ..........  6%  213K 32s
  3600K .......... .......... .......... .......... ..........  6% 95.0M 31s
  3650K .......... .......... .......... .......... ..........  7%  142M 31s
  3700K .......... .......... .......... .......... ..........  7%  129M 30s
  3750K .......... .......... .......... .......... ..........  7%  116M 30s
  3800K .......... .......... .......... .......... ..........  7% 4.49M 30s
  3850K .......... .......... .......... .......... ..........  7%  126M 29s
  3900K .......... .......... .......... .......... ..........  7%  124M 29s
  3950K .......... .......... .......... .......... ..........  7%  226M 28s
  4000K .......... .......... .......... .......... ..........  7%  170M 28s
  4050K .......... .......... .......... .......... ..........  7%  123M 28s
  4100K .......... .......... .......... .......... ..........  7%  186M 27s
  4150K .......... .......... .......... .......... ..........  8%  197M 27s
  4200K .......... .......... .......... .......... ..........  8%  192M 27s
  4250K .......... .......... .......... .......... ..........  8%  104M 26s
  4300K .......... .......... .......... .......... ..........  8%  136M 26s
  4350K .......... .......... .......... .......... ..........  8%  266M 26s
  4400K .......... .......... .......... .......... ..........  8%  226M 25s
  4450K .......... .......... .......... .......... ..........  8%  300M 25s
  4500K .......... .......... .......... .......... ..........  8%  260M 25s
  4550K .......... .......... .......... .......... ..........  8%  304M 24s
  4600K .......... .......... .......... .......... ..........  8%  299M 24s
  4650K .......... .......... .......... .......... ..........  8% 22.1M 24s
  4700K .......... .......... .......... .......... ..........  9% 12.1M 24s
  4750K .......... .......... .......... .......... ..........  9%  290K 25s
  4800K .......... .......... .......... .......... ..........  9% 3.77M 25s
  4850K .......... .......... .......... .......... ..........  9% 21.1M 25s
  4900K .......... .......... .......... .......... ..........  9% 10.4M 24s
  4950K .......... .......... .......... .......... ..........  9% 32.2M 24s
  5000K .......... .......... .......... .......... ..........  9% 17.3M 24s
  5050K .......... .......... .......... .......... ..........  9% 4.90M 24s
  5100K .......... .......... .......... .......... ..........  9% 26.6M 24s
  5150K .......... .......... .......... .......... ..........  9% 7.56M 23s
  5200K .......... .......... .......... .......... .......... 10% 30.7M 23s
  5250K .......... .......... .......... .......... .......... 10% 20.5M 23s
  5300K .......... .......... .......... .......... .......... 10% 9.93M 23s
  5350K .......... .......... .......... .......... .......... 10% 12.8M 22s
  5400K .......... .......... .......... .......... .......... 10%  297K 24s
  5450K .......... .......... .......... .......... .......... 10% 3.74M 24s
  5500K .......... .......... .......... .......... .......... 10% 12.6M 23s
  5550K .......... .......... .......... .......... .......... 10% 10.8M 23s
  5600K .......... .......... .......... .......... .......... 10% 7.09M 23s
  5650K .......... .......... .......... .......... .......... 10% 28.2M 23s
  5700K .......... .......... .......... .......... .......... 10% 11.3M 23s
  5750K .......... .......... .......... .......... .......... 11% 29.2M 22s
  5800K .......... .......... .......... .......... .......... 11% 6.63M 22s
  5850K .......... .......... .......... .......... .......... 11% 37.8M 22s
  5900K .......... .......... .......... .......... .......... 11% 4.25M 22s
  5950K .......... .......... .......... .......... .......... 11% 28.6M 22s
  6000K .......... .......... .......... .......... .......... 11% 31.0M 22s
  6050K .......... .......... .......... .......... .......... 11%  295K 23s
  6100K .......... .......... .......... .......... .......... 11% 35.2M 22s
  6150K .......... .......... .......... .......... .......... 11% 5.81M 22s
  6200K .......... .......... .......... .......... .......... 11% 13.7M 22s
  6250K .......... .......... .......... .......... .......... 12% 4.43M 22s
  6300K .......... .......... .......... .......... .......... 12% 35.0M 22s
  6350K .......... .......... .......... .......... .......... 12% 4.19M 22s
  6400K .......... .......... .......... .......... .......... 12% 27.2M 21s
  6450K .......... .......... .......... .......... .......... 12% 30.1M 21s
  6500K .......... .......... .......... .......... .......... 12% 28.3M 21s
  6550K .......... .......... .......... .......... .......... 12% 5.97M 21s
  6600K .......... .......... .......... .......... .......... 12% 19.2M 21s
  6650K .......... .......... .......... .......... .......... 12% 31.3M 21s
  6700K .......... .......... .......... .......... .......... 12% 24.6M 21s
  6750K .......... .......... .......... .......... .......... 12%  287K 22s
  6800K .......... .......... .......... .......... .......... 13% 14.1M 21s
  6850K .......... .......... .......... .......... .......... 13% 9.55M 21s
  6900K .......... .......... .......... .......... .......... 13% 9.87M 21s
  6950K .......... .......... .......... .......... .......... 13% 11.0M 21s
  7000K .......... .......... .......... .......... .......... 13% 3.64M 21s
  7050K .......... .......... .......... .......... .......... 13% 33.8M 21s
  7100K .......... .......... .......... .......... .......... 13% 4.51M 21s
  7150K .......... .......... .......... .......... .......... 13% 15.6M 20s
  7200K .......... .......... .......... .......... .......... 13% 26.2M 20s
  7250K .......... .......... .......... .......... .......... 13% 28.1M 20s
  7300K .......... .......... .......... .......... .......... 14% 7.94M 20s
  7350K .......... .......... .......... .......... .......... 14% 21.3M 20s
  7400K .......... .......... .......... .......... .......... 14%  307K 21s
  7450K .......... .......... .......... .......... .......... 14% 9.83M 21s
  7500K .......... .......... .......... .......... .......... 14% 33.8M 20s
  7550K .......... .......... .......... .......... .......... 14% 4.31M 20s
  7600K .......... .......... .......... .......... .......... 14% 26.0M 20s
  7650K .......... .......... .......... .......... .......... 14% 16.0M 20s
  7700K .......... .......... .......... .......... .......... 14% 3.77M 20s
  7750K .......... .......... .......... .......... .......... 14% 4.85M 20s
  7800K .......... .......... .......... .......... .......... 14% 15.8M 20s
  7850K .......... .......... .......... .......... .......... 15% 31.5M 20s
  7900K .......... .......... .......... .......... .......... 15% 18.9M 19s
  7950K .......... .......... .......... .......... .......... 15% 24.2M 19s
  8000K .......... .......... .......... .......... .......... 15% 6.67M 19s
  8050K .......... .......... .......... .......... .......... 15% 22.0M 19s
  8100K .......... .......... .......... .......... .......... 15%  306K 20s
  8150K .......... .......... .......... .......... .......... 15% 30.4M 20s
  8200K .......... .......... .......... .......... .......... 15% 3.44M 20s
  8250K .......... .......... .......... .......... .......... 15% 30.3M 20s
  8300K .......... .......... .......... .......... .......... 15% 5.14M 19s
  8350K .......... .......... .......... .......... .......... 16% 15.8M 19s
  8400K .......... .......... .......... .......... .......... 16% 11.8M 19s
  8450K .......... .......... .......... .......... .......... 16% 4.77M 19s
  8500K .......... .......... .......... .......... .......... 16% 4.79M 19s
  8550K .......... .......... .......... .......... .......... 16% 26.6M 19s
  8600K .......... .......... .......... .......... .......... 16% 23.8M 19s
  8650K .......... .......... .......... .......... .......... 16% 24.1M 19s
  8700K .......... .......... .......... .......... .......... 16% 32.3M 19s
  8750K .......... .......... .......... .......... .......... 16% 5.86M 18s
  8800K .......... .......... .......... .......... .......... 16%  317K 19s
  8850K .......... .......... .......... .......... .......... 16% 4.70M 19s
  8900K .......... .......... .......... .......... .......... 17% 12.6M 19s
  8950K .......... .......... .......... .......... .......... 17% 30.3M 19s
  9000K .......... .......... .......... .......... .......... 17% 5.50M 19s
  9050K .......... .......... .......... .......... .......... 17% 4.26M 19s
  9100K .......... .......... .......... .......... .......... 17% 24.6M 19s
  9150K .......... .......... .......... .......... .......... 17% 13.0M 18s
  9200K .......... .......... .......... .......... .......... 17% 4.01M 18s
  9250K .......... .......... .......... .......... .......... 17% 5.27M 18s
  9300K .......... .......... .......... .......... .......... 17% 21.7M 18s
  9350K .......... .......... .......... .......... .......... 17% 23.7M 18s
  9400K .......... .......... .......... .......... .......... 18% 27.3M 18s
  9450K .......... .......... .......... .......... .......... 18% 33.4M 18s
  9500K .......... .......... .......... .......... .......... 18%  323K 18s
  9550K .......... .......... .......... .......... .......... 18% 4.77M 18s
  9600K .......... .......... .......... .......... .......... 18% 34.6M 18s
  9650K .......... .......... .......... .......... .......... 18% 14.3M 18s
  9700K .......... .......... .......... .......... .......... 18% 5.00M 18s
  9750K .......... .......... .......... .......... .......... 18% 4.13M 18s
  9800K .......... .......... .......... .......... .......... 18% 4.33M 18s
  9850K .......... .......... .......... .......... .......... 18% 17.9M 18s
  9900K .......... .......... .......... .......... .......... 18% 32.5M 18s
  9950K .......... .......... .......... .......... .......... 19% 13.3M 18s
 10000K .......... .......... .......... .......... .......... 19% 5.31M 18s
 10050K .......... .......... .......... .......... .......... 19% 3.88M 18s
 10100K .......... .......... .......... .......... .......... 19% 24.7M 17s
 10150K .......... .......... .......... .......... .......... 19% 30.5M 17s
 10200K .......... .......... .......... .......... .......... 19% 31.2M 17s
 10250K .......... .......... .......... .......... .......... 19%  338K 18s
 10300K .......... .......... .......... .......... .......... 19% 11.4M 18s
 10350K .......... .......... .......... .......... .......... 19% 8.72M 18s
 10400K .......... .......... .......... .......... .......... 19% 11.6M 17s
 10450K .......... .......... .......... .......... .......... 20% 3.59M 17s
 10500K .......... .......... .......... .......... .......... 20% 7.27M 17s
 10550K .......... .......... .......... .......... .......... 20% 4.89M 17s
 10600K .......... .......... .......... .......... .......... 20% 30.6M 17s
 10650K .......... .......... .......... .......... .......... 20% 22.9M 17s
 10700K .......... .......... .......... .......... .......... 20% 4.14M 17s
 10750K .......... .......... .......... .......... .......... 20% 4.14M 17s
 10800K .......... .......... .......... .......... .......... 20% 3.80M 17s
 10850K .......... .......... .......... .......... .......... 20% 30.2M 17s
 10900K .......... .......... .......... .......... .......... 20% 31.8M 17s
 10950K .......... .......... .......... .......... .......... 20%  373K 17s
 11000K .......... .......... .......... .......... .......... 21% 2.85M 17s
 11050K .......... .......... .......... .......... .......... 21% 27.1M 17s
 11100K .......... .......... .......... .......... .......... 21% 29.1M 17s
 11150K .......... .......... .......... .......... .......... 21% 29.2M 17s
 11200K .......... .......... .......... .......... .......... 21% 3.66M 17s
 11250K .......... .......... .......... .......... .......... 21% 3.80M 17s
 11300K .......... .......... .......... .......... .......... 21% 32.7M 17s
 11350K .......... .......... .......... .......... .......... 21% 29.8M 17s
 11400K .......... .......... .......... .......... .......... 21% 5.99M 17s
 11450K .......... .......... .......... .......... .......... 21% 3.42M 17s
 11500K .......... .......... .......... .......... .......... 22% 20.1M 16s
 11550K .......... .......... .......... .......... .......... 22% 3.92M 16s
 11600K .......... .......... .......... .......... .......... 22% 30.8M 16s
 11650K .......... .......... .......... .......... .......... 22% 4.82M 16s
 11700K .......... .......... .......... .......... .......... 22%  397K 17s
 11750K .......... .......... .......... .......... .......... 22% 1.92M 17s
 11800K .......... .......... .......... .......... .......... 22% 16.2M 16s
 11850K .......... .......... .......... .......... .......... 22% 31.1M 16s
 11900K .......... .......... .......... .......... .......... 22% 33.5M 16s
 11950K .......... .......... .......... .......... .......... 22% 4.15M 16s
 12000K .......... .......... .......... .......... .......... 22% 3.75M 16s
 12050K .......... .......... .......... .......... .......... 23% 27.7M 16s
 12100K .......... .......... .......... .......... .......... 23% 33.8M 16s
 12150K .......... .......... .......... .......... .......... 23% 24.5M 16s
 12200K .......... .......... .......... .......... .......... 23% 2.19M 16s
 12250K .......... .......... .......... .......... .......... 23% 32.4M 16s
 12300K .......... .......... .......... .......... .......... 23% 15.3M 16s
 12350K .......... .......... .......... .......... .......... 23% 33.8M 16s
 12400K .......... .......... .......... .......... .......... 23% 2.41M 16s
 12450K .......... .......... .......... .......... .......... 23%  423K 16s
 12500K .......... .......... .......... .......... .......... 23% 1.97M 16s
 12550K .......... .......... .......... .......... .......... 24% 30.7M 16s
 12600K .......... .......... .......... .......... .......... 24% 35.8M 16s
 12650K .......... .......... .......... .......... .......... 24% 4.91M 16s
 12700K .......... .......... .......... .......... .......... 24% 11.5M 16s
 12750K .......... .......... .......... .......... .......... 24% 2.21M 16s
 12800K .......... .......... .......... .......... .......... 24% 25.4M 16s
 12850K .......... .......... .......... .......... .......... 24% 30.5M 16s
 12900K .......... .......... .......... .......... .......... 24% 31.8M 16s
 12950K .......... .......... .......... .......... .......... 24% 2.21M 15s
 13000K .......... .......... .......... .......... .......... 24% 31.6M 15s
 13050K .......... .......... .......... .......... .......... 24% 33.1M 15s
 13100K .......... .......... .......... .......... .......... 25% 30.7M 15s
 13150K .......... .......... .......... .......... .......... 25% 3.83M 15s
 13200K .......... .......... .......... .......... .......... 25%  422K 16s
 13250K .......... .......... .......... .......... .......... 25% 3.06M 15s
 13300K .......... .......... .......... .......... .......... 25% 5.01M 15s
 13350K .......... .......... .......... .......... .......... 25% 30.5M 15s
 13400K .......... .......... .......... .......... .......... 25% 2.53M 15s
 13450K .......... .......... .......... .......... .......... 25% 30.5M 15s
 13500K .......... .......... .......... .......... .......... 25% 3.48M 15s
 13550K .......... .......... .......... .......... .......... 25% 24.4M 15s
 13600K .......... .......... .......... .......... .......... 26% 4.80M 15s
 13650K .......... .......... .......... .......... .......... 26% 25.9M 15s
 13700K .......... .......... .......... .......... .......... 26% 3.54M 15s
 13750K .......... .......... .......... .......... .......... 26% 3.38M 15s
 13800K .......... .......... .......... .......... .......... 26% 31.6M 15s
 13850K .......... .......... .......... .......... .......... 26% 27.3M 15s
 13900K .......... .......... .......... .......... .......... 26% 29.6M 15s
 13950K .......... .......... .......... .......... .......... 26%  430K 15s
 14000K .......... .......... .......... .......... .......... 26% 2.96M 15s
 14050K .......... .......... .......... .......... .......... 26% 4.69M 15s
 14100K .......... .......... .......... .......... .......... 26% 28.8M 15s
 14150K .......... .......... .......... .......... .......... 27% 2.75M 15s
 14200K .......... .......... .......... .......... .......... 27% 27.0M 15s
 14250K .......... .......... .......... .......... .......... 27% 3.50M 15s
 14300K .......... .......... .......... .......... .......... 27% 36.0M 15s
 14350K .......... .......... .......... .......... .......... 27% 5.89M 15s
 14400K .......... .......... .......... .......... .......... 27% 13.9M 15s
 14450K .......... .......... .......... .......... .......... 27% 32.5M 15s
 14500K .......... .......... .......... .......... .......... 27% 1.86M 15s
 14550K .......... .......... .......... .......... .......... 27% 20.2M 14s
 14600K .......... .......... .......... .......... .......... 27% 5.07M 14s
 14650K .......... .......... .......... .......... .......... 28% 27.9M 14s
 14700K .......... .......... .......... .......... .......... 28% 4.08M 14s
 14750K .......... .......... .......... .......... .......... 28%  505K 14s
 14800K .......... .......... .......... .......... .......... 28% 1.99M 14s
 14850K .......... .......... .......... .......... .......... 28% 15.6M 14s
 14900K .......... .......... .......... .......... .......... 28% 30.1M 14s
 14950K .......... .......... .......... .......... .......... 28% 2.87M 14s
 15000K .......... .......... .......... .......... .......... 28% 30.6M 14s
 15050K .......... .......... .......... .......... .......... 28% 3.58M 14s
 15100K .......... .......... .......... .......... .......... 28% 28.3M 14s
 15150K .......... .......... .......... .......... .......... 28% 6.20M 14s
 15200K .......... .......... .......... .......... .......... 29% 19.0M 14s
 15250K .......... .......... .......... .......... .......... 29% 1.71M 14s
 15300K .......... .......... .......... .......... .......... 29% 34.1M 14s
 15350K .......... .......... .......... .......... .......... 29% 5.03M 14s
 15400K .......... .......... .......... .......... .......... 29% 29.0M 14s
 15450K .......... .......... .......... .......... .......... 29% 30.1M 14s
 15500K .......... .......... .......... .......... .......... 29%  454K 14s
 15550K .......... .......... .......... .......... .......... 29% 3.08M 14s
 15600K .......... .......... .......... .......... .......... 29% 8.56M 14s
 15650K .......... .......... .......... .......... .......... 29% 9.52M 14s
 15700K .......... .......... .......... .......... .......... 30% 2.55M 14s
 15750K .......... .......... .......... .......... .......... 30% 31.3M 14s
 15800K .......... .......... .......... .......... .......... 30% 3.13M 14s
 15850K .......... .......... .......... .......... .......... 30% 23.5M 14s
 15900K .......... .......... .......... .......... .......... 30% 19.0M 14s
 15950K .......... .......... .......... .......... .......... 30% 12.9M 14s
 16000K .......... .......... .......... .......... .......... 30% 30.5M 14s
 16050K .......... .......... .......... .......... .......... 30% 1.65M 14s
 16100K .......... .......... .......... .......... .......... 30% 10.0M 14s
 16150K .......... .......... .......... .......... .......... 30% 7.15M 14s
 16200K .......... .......... .......... .......... .......... 31% 31.1M 13s
 16250K .......... .......... .......... .......... .......... 31% 5.56M 13s
 16300K .......... .......... .......... .......... .......... 31%  466K 14s
 16350K .......... .......... .......... .......... .......... 31% 3.81M 14s
 16400K .......... .......... .......... .......... .......... 31% 6.77M 14s
 16450K .......... .......... .......... .......... .......... 31% 28.0M 13s
 16500K .......... .......... .......... .......... .......... 31% 2.52M 13s
 16550K .......... .......... .......... .......... .......... 31% 11.6M 13s
 16600K .......... .......... .......... .......... .......... 31% 3.60M 13s
 16650K .......... .......... .......... .......... .......... 31% 3.74M 13s
 16700K .......... .......... .......... .......... .......... 31% 34.3M 13s
 16750K .......... .......... .......... .......... .......... 32% 31.7M 13s
 16800K .......... .......... .......... .......... .......... 32% 2.57M 13s
 16850K .......... .......... .......... .......... .......... 32% 9.08M 13s
 16900K .......... .......... .......... .......... .......... 32% 5.79M 13s
 16950K .......... .......... .......... .......... .......... 32% 31.6M 13s
 17000K .......... .......... .......... .......... .......... 32% 32.9M 13s
 17050K .......... .......... .......... .......... .......... 32%  486K 13s
 17100K .......... .......... .......... .......... .......... 32% 2.06M 13s
 17150K .......... .......... .......... .......... .......... 32% 14.0M 13s
 17200K .......... .......... .......... .......... .......... 32% 8.88M 13s
 17250K .......... .......... .......... .......... .......... 33% 2.30M 13s
 17300K .......... .......... .......... .......... .......... 33% 3.69M 13s
 17350K .......... .......... .......... .......... .......... 33% 29.4M 13s
 17400K .......... .......... .......... .......... .......... 33% 11.4M 13s
 17450K .......... .......... .......... .......... .......... 33% 4.18M 13s
 17500K .......... .......... .......... .......... .......... 33% 4.84M 13s
 17550K .......... .......... .......... .......... .......... 33% 28.7M 13s
 17600K .......... .......... .......... .......... .......... 33% 4.50M 13s
 17650K .......... .......... .......... .......... .......... 33% 10.1M 13s
 17700K .......... .......... .......... .......... .......... 33% 6.65M 13s
 17750K .......... .......... .......... .......... .......... 33% 33.9M 13s
 17800K .......... .......... .......... .......... .......... 34% 19.6M 13s
 17850K .......... .......... .......... .......... .......... 34%  444K 13s
 17900K .......... .......... .......... .......... .......... 34% 3.47M 13s
 17950K .......... .......... .......... .......... .......... 34% 12.3M 13s
 18000K .......... .......... .......... .......... .......... 34% 10.7M 13s
 18050K .......... .......... .......... .......... .......... 34% 1.51M 13s
 18100K .......... .......... .......... .......... .......... 34% 18.8M 13s
 18150K .......... .......... .......... .......... .......... 34% 14.7M 13s
 18200K .......... .......... .......... .......... .......... 34% 3.81M 13s
 18250K .......... .......... .......... .......... .......... 34% 40.1M 12s
 18300K .......... .......... .......... .......... .......... 35% 4.09M 12s
 18350K .......... .......... .......... .......... .......... 35% 3.73M 12s
 18400K .......... .......... .......... .......... .......... 35% 36.9M 12s
 18450K .......... .......... .......... .......... .......... 35% 30.6M 12s
 18500K .......... .......... .......... .......... .......... 35% 4.79M 12s
 18550K .......... .......... .......... .......... .......... 35% 32.8M 12s
 18600K .......... .......... .......... .......... .......... 35% 4.73M 12s
 18650K .......... .......... .......... .......... .......... 35%  491K 12s
 18700K .......... .......... .......... .......... .......... 35% 3.25M 12s
 18750K .......... .......... .......... .......... .......... 35% 13.9M 12s
 18800K .......... .......... .......... .......... .......... 35% 12.1M 12s
 18850K .......... .......... .......... .......... .......... 36% 1.47M 12s
 18900K .......... .......... .......... .......... .......... 36% 27.6M 12s
 18950K .......... .......... .......... .......... .......... 36% 22.3M 12s
 19000K .......... .......... .......... .......... .......... 36% 3.64M 12s
 19050K .......... .......... .......... .......... .......... 36% 5.01M 12s
 19100K .......... .......... .......... .......... .......... 36% 13.3M 12s
 19150K .......... .......... .......... .......... .......... 36% 2.99M 12s
 19200K .......... .......... .......... .......... .......... 36% 34.2M 12s
 19250K .......... .......... .......... .......... .......... 36% 8.00M 12s
 19300K .......... .......... .......... .......... .......... 36% 26.0M 12s
 19350K .......... .......... .......... .......... .......... 37% 31.7M 12s
 19400K .......... .......... .......... .......... .......... 37%  483K 12s
 19450K .......... .......... .......... .......... .......... 37% 2.06M 12s
 19500K .......... .......... .......... .......... .......... 37% 39.3M 12s
 19550K .......... .......... .......... .......... .......... 37% 24.2M 12s
 19600K .......... .......... .......... .......... .......... 37% 1.81M 12s
 19650K .......... .......... .......... .......... .......... 37% 3.51M 12s
 19700K .......... .......... .......... .......... .......... 37% 31.8M 12s
 19750K .......... .......... .......... .......... .......... 37% 34.1M 12s
 19800K .......... .......... .......... .......... .......... 37% 3.20M 12s
 19850K .......... .......... .......... .......... .......... 37% 6.40M 12s
 19900K .......... .......... .......... .......... .......... 38% 34.5M 12s
 19950K .......... .......... .......... .......... .......... 38% 2.85M 12s
 20000K .......... .......... .......... .......... .......... 38% 20.5M 12s
 20050K .......... .......... .......... .......... .......... 38% 26.3M 12s
 20100K .......... .......... .......... .......... .......... 38% 10.9M 11s
 20150K .......... .......... .......... .......... .......... 38% 25.2M 11s
 20200K .......... .......... .......... .......... .......... 38%  442K 12s
 20250K .......... .......... .......... .......... .......... 38% 3.42M 12s
 20300K .......... .......... .......... .......... .......... 38% 31.8M 12s
 20350K .......... .......... .......... .......... .......... 38% 13.0M 11s
 20400K .......... .......... .......... .......... .......... 39% 1.28M 11s
 20450K .......... .......... .......... .......... .......... 39% 8.28M 11s
 20500K .......... .......... .......... .......... .......... 39% 30.8M 11s
 20550K .......... .......... .......... .......... .......... 39% 27.6M 11s
 20600K .......... .......... .......... .......... .......... 39% 5.20M 11s
 20650K .......... .......... .......... .......... .......... 39% 6.35M 11s
 20700K .......... .......... .......... .......... .......... 39% 32.8M 11s
 20750K .......... .......... .......... .......... .......... 39% 2.65M 11s
 20800K .......... .......... .......... .......... .......... 39% 3.74M 11s
 20850K .......... .......... .......... .......... .......... 39% 30.6M 11s
 20900K .......... .......... .......... .......... .......... 39% 32.2M 11s
 20950K .......... .......... .......... .......... .......... 40% 30.0M 11s
 21000K .......... .......... .......... .......... .......... 40%  476K 11s
 21050K .......... .......... .......... .......... .......... 40% 2.82M 11s
 21100K .......... .......... .......... .......... .......... 40% 19.5M 11s
 21150K .......... .......... .......... .......... .......... 40% 30.6M 11s
 21200K .......... .......... .......... .......... .......... 40% 1.32M 11s
 21250K .......... .......... .......... .......... .......... 40% 7.65M 11s
 21300K .......... .......... .......... .......... .......... 40% 37.8M 11s
 21350K .......... .......... .......... .......... .......... 40% 14.0M 11s
 21400K .......... .......... .......... .......... .......... 40% 3.29M 11s
 21450K .......... .......... .......... .......... .......... 41% 12.6M 11s
 21500K .......... .......... .......... .......... .......... 41% 32.3M 11s
 21550K .......... .......... .......... .......... .......... 41% 1.81M 11s
 21600K .......... .......... .......... .......... .......... 41% 25.9M 11s
 21650K .......... .......... .......... .......... .......... 41% 31.1M 11s
 21700K .......... .......... .......... .......... .......... 41% 29.1M 11s
 21750K .......... .......... .......... .......... .......... 41% 6.57M 11s
 21800K .......... .......... .......... .......... .......... 41%  506K 11s
 21850K .......... .......... .......... .......... .......... 41% 2.92M 11s
 21900K .......... .......... .......... .......... .......... 41% 30.7M 11s
 21950K .......... .......... .......... .......... .......... 41% 8.04M 11s
 22000K .......... .......... .......... .......... .......... 42% 1.56M 11s
 22050K .......... .......... .......... .......... .......... 42% 14.1M 11s
 22100K .......... .......... .......... .......... .......... 42% 10.6M 11s
 22150K .......... .......... .......... .......... .......... 42% 15.6M 11s
 22200K .......... .......... .......... .......... .......... 42% 2.93M 11s
 22250K .......... .......... .......... .......... .......... 42% 25.1M 11s
 22300K .......... .......... .......... .......... .......... 42% 3.06M 11s
 22350K .......... .......... .......... .......... .......... 42% 3.77M 11s
 22400K .......... .......... .......... .......... .......... 42% 5.21M 11s
 22450K .......... .......... .......... .......... .......... 42% 28.5M 10s
 22500K .......... .......... .......... .......... .......... 43% 27.1M 10s
 22550K .......... .......... .......... .......... .......... 43%  630K 10s
 22600K .......... .......... .......... .......... .......... 43% 2.44M 10s
 22650K .......... .......... .......... .......... .......... 43% 2.76M 10s
 22700K .......... .......... .......... .......... .......... 43% 30.6M 10s
 22750K .......... .......... .......... .......... .......... 43% 8.34M 10s
 22800K .......... .......... .......... .......... .......... 43% 1.62M 10s
 22850K .......... .......... .......... .......... .......... 43% 16.1M 10s
 22900K .......... .......... .......... .......... .......... 43% 6.12M 10s
 22950K .......... .......... .......... .......... .......... 43% 3.57M 10s
 23000K .......... .......... .......... .......... .......... 43% 31.5M 10s
 23050K .......... .......... .......... .......... .......... 44% 12.9M 10s
 23100K .......... .......... .......... .......... .......... 44% 1.96M 10s
 23150K .......... .......... .......... .......... .......... 44% 5.98M 10s
 23200K .......... .......... .......... .......... .......... 44% 11.5M 10s
 23250K .......... .......... .......... .......... .......... 44% 30.2M 10s
 23300K .......... .......... .......... .......... .......... 44% 21.0M 10s
 23350K .......... .......... .......... .......... .......... 44%  484K 10s
 23400K .......... .......... .......... .......... .......... 44% 3.06M 10s
 23450K .......... .......... .......... .......... .......... 44% 10.1M 10s
 23500K .......... .......... .......... .......... .......... 44% 23.3M 10s
 23550K .......... .......... .......... .......... .......... 45% 1.78M 10s
 23600K .......... .......... .......... .......... .......... 45% 35.9M 10s
 23650K .......... .......... .......... .......... .......... 45% 5.61M 10s
 23700K .......... .......... .......... .......... .......... 45% 4.77M 10s
 23750K .......... .......... .......... .......... .......... 45% 15.7M 10s
 23800K .......... .......... .......... .......... .......... 45% 12.5M 10s
 23850K .......... .......... .......... .......... .......... 45% 13.2M 10s
 23900K .......... .......... .......... .......... .......... 45% 1.53M 10s
 23950K .......... .......... .......... .......... .......... 45% 16.0M 10s
 24000K .......... .......... .......... .......... .......... 45% 22.1M 10s
 24050K .......... .......... .......... .......... .......... 45% 28.5M 10s
 24100K .......... .......... .......... .......... .......... 46% 19.4M 10s
 24150K .......... .......... .......... .......... .......... 46%  480K 10s
 24200K .......... .......... .......... .......... .......... 46% 3.00M 10s
 24250K .......... .......... .......... .......... .......... 46% 13.1M 10s
 24300K .......... .......... .......... .......... .......... 46% 27.3M 10s
 24350K .......... .......... .......... .......... .......... 46% 1.75M 10s
 24400K .......... .......... .......... .......... .......... 46% 41.6M 10s
 24450K .......... .......... .......... .......... .......... 46% 5.33M 10s
 24500K .......... .......... .......... .......... .......... 46% 3.91M 10s
 24550K .......... .......... .......... .......... .......... 46% 14.2M 10s
 24600K .......... .......... .......... .......... .......... 47% 29.5M 10s
 24650K .......... .......... .......... .......... .......... 47% 17.2M 10s
 24700K .......... .......... .......... .......... .......... 47% 1.55M 10s
 24750K .......... .......... .......... .......... .......... 47% 17.3M 10s
 24800K .......... .......... .......... .......... .......... 47% 29.9M 9s
 24850K .......... .......... .......... .......... .......... 47% 20.7M 9s
 24900K .......... .......... .......... .......... .......... 47% 7.30M 9s
 24950K .......... .......... .......... .......... .......... 47%  496K 9s
 25000K .......... .......... .......... .......... .......... 47% 2.74M 9s
 25050K .......... .......... .......... .......... .......... 47% 29.9M 9s
 25100K .......... .......... .......... .......... .......... 47% 8.19M 9s
 25150K .......... .......... .......... .......... .......... 48% 2.36M 9s
 25200K .......... .......... .......... .......... .......... 48% 7.80M 9s
 25250K .......... .......... .......... .......... .......... 48% 6.08M 9s
 25300K .......... .......... .......... .......... .......... 48% 4.03M 9s
 25350K .......... .......... .......... .......... .......... 48% 5.27M 9s
 25400K .......... .......... .......... .......... .......... 48% 29.1M 9s
 25450K .......... .......... .......... .......... .......... 48% 2.72M 9s
 25500K .......... .......... .......... .......... .......... 48% 5.61M 9s
 25550K .......... .......... .......... .......... .......... 48% 11.5M 9s
 25600K .......... .......... .......... .......... .......... 48% 17.4M 9s
 25650K .......... .......... .......... .......... .......... 49% 9.14M 9s
 25700K .......... .......... .......... .......... .......... 49% 1.23M 9s
 25750K .......... .......... .......... .......... .......... 49%  780K 9s
 25800K .......... .......... .......... .......... .......... 49% 2.47M 9s
 25850K .......... .......... .......... .......... .......... 49% 11.6M 9s
 25900K .......... .......... .......... .......... .......... 49% 28.5M 9s
 25950K .......... .......... .......... .......... .......... 49% 2.04M 9s
 26000K .......... .......... .......... .......... .......... 49% 16.1M 9s
 26050K .......... .......... .......... .......... .......... 49% 2.67M 9s
 26100K .......... .......... .......... .......... .......... 49% 6.85M 9s
 26150K .......... .......... .......... .......... .......... 49% 11.6M 9s
 26200K .......... .......... .......... .......... .......... 50% 24.4M 9s
 26250K .......... .......... .......... .......... .......... 50% 3.27M 9s
 26300K .......... .......... .......... .......... .......... 50% 2.50M 9s
 26350K .......... .......... .......... .......... .......... 50% 25.3M 9s
 26400K .......... .......... .......... .......... .......... 50% 4.11M 9s
 26450K .......... .......... .......... .......... .......... 50% 13.6M 9s
 26500K .......... .......... .......... .......... .......... 50%  604K 9s
 26550K .......... .......... .......... .......... .......... 50% 1.76M 9s
 26600K .......... .......... .......... .......... .......... 50% 26.6M 9s
 26650K .......... .......... .......... .......... .......... 50% 3.90M 9s
 26700K .......... .......... .......... .......... .......... 51% 4.94M 9s
 26750K .......... .......... .......... .......... .......... 51% 10.3M 9s
 26800K .......... .......... .......... .......... .......... 51% 5.31M 9s
 26850K .......... .......... .......... .......... .......... 51% 3.96M 9s
 26900K .......... .......... .......... .......... .......... 51% 6.24M 9s
 26950K .......... .......... .......... .......... .......... 51% 33.2M 9s
 27000K .......... .......... .......... .......... .......... 51% 3.38M 9s
 27050K .......... .......... .......... .......... .......... 51% 5.17M 9s
 27100K .......... .......... .......... .......... .......... 51% 1.97M 9s
 27150K .......... .......... .......... .......... .......... 51% 11.1M 9s
 27200K .......... .......... .......... .......... .......... 51% 24.4M 9s
 27250K .......... .......... .......... .......... .......... 52% 30.9M 9s
 27300K .......... .......... .......... .......... .......... 52%  555K 9s
 27350K .......... .......... .......... .......... .......... 52% 2.42M 9s
 27400K .......... .......... .......... .......... .......... 52% 4.11M 9s
 27450K .......... .......... .......... .......... .......... 52% 17.1M 8s
 27500K .......... .......... .......... .......... .......... 52% 4.93M 8s
 27550K .......... .......... .......... .......... .......... 52% 14.2M 8s
 27600K .......... .......... .......... .......... .......... 52% 4.50M 8s
 27650K .......... .......... .......... .......... .......... 52% 2.81M 8s
 27700K .......... .......... .......... .......... .......... 52% 29.4M 8s
 27750K .......... .......... .......... .......... .......... 53% 30.9M 8s
 27800K .......... .......... .......... .......... .......... 53% 3.22M 8s
 27850K .......... .......... .......... .......... .......... 53% 5.28M 8s
 27900K .......... .......... .......... .......... .......... 53% 1.98M 8s
 27950K .......... .......... .......... .......... .......... 53% 13.5M 8s
 28000K .......... .......... .......... .......... .......... 53% 35.0M 8s
 28050K .......... .......... .......... .......... .......... 53% 5.43M 8s
 28100K .......... .......... .......... .......... .......... 53%  598K 8s
 28150K .......... .......... .......... .......... .......... 53% 2.33M 8s
 28200K .......... .......... .......... .......... .......... 53% 5.37M 8s
 28250K .......... .......... .......... .......... .......... 53% 4.40M 8s
 28300K .......... .......... .......... .......... .......... 54% 31.7M 8s
 28350K .......... .......... .......... .......... .......... 54% 8.66M 8s
 28400K .......... .......... .......... .......... .......... 54% 4.05M 8s
 28450K .......... .......... .......... .......... .......... 54% 3.14M 8s
 28500K .......... .......... .......... .......... .......... 54% 27.1M 8s
 28550K .......... .......... .......... .......... .......... 54% 31.7M 8s
 28600K .......... .......... .......... .......... .......... 54% 2.18M 8s
 28650K .......... .......... .......... .......... .......... 54% 1.81M 8s
 28700K .......... .......... .......... .......... .......... 54% 34.6M 8s
 28750K .......... .......... .......... .......... .......... 54% 32.0M 8s
 28800K .......... .......... .......... .......... .......... 55% 6.41M 8s
 28850K .......... .......... .......... .......... .......... 55% 31.2M 8s
 28900K .......... .......... .......... .......... .......... 55%  578K 8s
 28950K .......... .......... .......... .......... .......... 55% 2.09M 8s
 29000K .......... .......... .......... .......... .......... 55% 3.75M 8s
 29050K .......... .......... .......... .......... .......... 55% 20.6M 8s
 29100K .......... .......... .......... .......... .......... 55% 19.2M 8s
 29150K .......... .......... .......... .......... .......... 55% 10.1M 8s
 29200K .......... .......... .......... .......... .......... 55% 3.25M 8s
 29250K .......... .......... .......... .......... .......... 55% 2.59M 8s
 29300K .......... .......... .......... .......... .......... 55% 35.0M 8s
 29350K .......... .......... .......... .......... .......... 56% 31.1M 8s
 29400K .......... .......... .......... .......... .......... 56% 3.17M 8s
 29450K .......... .......... .......... .......... .......... 56% 1.58M 8s
 29500K .......... .......... .......... .......... .......... 56% 27.5M 8s
 29550K .......... .......... .......... .......... .......... 56% 15.8M 8s
 29600K .......... .......... .......... .......... .......... 56% 16.3M 8s
 29650K .......... .......... .......... .......... .......... 56% 1.90M 8s
 29700K .......... .......... .......... .......... .......... 56%  768K 8s
 29750K .......... .......... .......... .......... .......... 56% 1.99M 8s
 29800K .......... .......... .......... .......... .......... 56% 5.02M 8s
 29850K .......... .......... .......... .......... .......... 57% 32.5M 8s
 29900K .......... .......... .......... .......... .......... 57% 10.7M 8s
 29950K .......... .......... .......... .......... .......... 57% 10.8M 8s
 30000K .......... .......... .......... .......... .......... 57% 1.64M 8s
 30050K .......... .......... .......... .......... .......... 57% 18.0M 7s
 30100K .......... .......... .......... .......... .......... 57% 32.1M 7s
 30150K .......... .......... .......... .......... .......... 57% 17.9M 7s
 30200K .......... .......... .......... .......... .......... 57% 2.36M 7s
 30250K .......... .......... .......... .......... .......... 57% 1.86M 7s
 30300K .......... .......... .......... .......... .......... 57% 28.0M 7s
 30350K .......... .......... .......... .......... .......... 57% 23.5M 7s
 30400K .......... .......... .......... .......... .......... 58% 30.5M 7s
 30450K .......... .......... .......... .......... .......... 58%  594K 7s
 30500K .......... .......... .......... .......... .......... 58% 1.74M 7s
 30550K .......... .......... .......... .......... .......... 58% 4.68M 7s
 30600K .......... .......... .......... .......... .......... 58% 15.3M 7s
 30650K .......... .......... .......... .......... .......... 58% 11.5M 7s
 30700K .......... .......... .......... .......... .......... 58% 33.1M 7s
 30750K .......... .......... .......... .......... .......... 58% 2.31M 7s
 30800K .......... .......... .......... .......... .......... 58% 3.32M 7s
 30850K .......... .......... .......... .......... .......... 58% 28.5M 7s
 30900K .......... .......... .......... .......... .......... 59% 33.3M 7s
 30950K .......... .......... .......... .......... .......... 59% 2.36M 7s
 31000K .......... .......... .......... .......... .......... 59% 14.8M 7s
 31050K .......... .......... .......... .......... .......... 59% 1.84M 7s
 31100K .......... .......... .......... .......... .......... 59% 27.5M 7s
 31150K .......... .......... .......... .......... .......... 59% 32.3M 7s
 31200K .......... .......... .......... .......... .......... 59% 4.57M 7s
 31250K .......... .......... .......... .......... .......... 59%  595K 7s
 31300K .......... .......... .......... .......... .......... 59% 2.29M 7s
 31350K .......... .......... .......... .......... .......... 59% 5.43M 7s
 31400K .......... .......... .......... .......... .......... 59% 36.3M 7s
 31450K .......... .......... .......... .......... .......... 60% 6.87M 7s
 31500K .......... .......... .......... .......... .......... 60% 20.1M 7s
 31550K .......... .......... .......... .......... .......... 60% 2.45M 7s
 31600K .......... .......... .......... .......... .......... 60% 3.16M 7s
 31650K .......... .......... .......... .......... .......... 60% 27.6M 7s
 31700K .......... .......... .......... .......... .......... 60% 32.0M 7s
 31750K .......... .......... .......... .......... .......... 60% 2.54M 7s
 31800K .......... .......... .......... .......... .......... 60% 33.9M 7s
 31850K .......... .......... .......... .......... .......... 60% 1.79M 7s
 31900K .......... .......... .......... .......... .......... 60% 31.2M 7s
 31950K .......... .......... .......... .......... .......... 61% 5.11M 7s
 32000K .......... .......... .......... .......... .......... 61% 18.4M 7s
 32050K .......... .......... .......... .......... .......... 61%  582K 7s
 32100K .......... .......... .......... .......... .......... 61% 2.35M 7s
 32150K .......... .......... .......... .......... .......... 61% 3.00M 7s
 32200K .......... .......... .......... .......... .......... 61% 28.0M 7s
 32250K .......... .......... .......... .......... .......... 61% 34.2M 7s
 32300K .......... .......... .......... .......... .......... 61% 28.4M 7s
 32350K .......... .......... .......... .......... .......... 61% 1.51M 7s
 32400K .......... .......... .......... .......... .......... 61% 30.9M 7s
 32450K .......... .......... .......... .......... .......... 62% 33.4M 7s
 32500K .......... .......... .......... .......... .......... 62% 16.3M 7s
 32550K .......... .......... .......... .......... .......... 62% 2.64M 7s
 32600K .......... .......... .......... .......... .......... 62% 29.3M 7s
 32650K .......... .......... .......... .......... .......... 62% 1.88M 7s
 32700K .......... .......... .......... .......... .......... 62% 5.77M 7s
 32750K .......... .......... .......... .......... .......... 62% 15.3M 6s
 32800K .......... .......... .......... .......... .......... 62% 26.0M 6s
 32850K .......... .......... .......... .......... .......... 62%  582K 6s
 32900K .......... .......... .......... .......... .......... 62% 1.26M 6s
 32950K .......... .......... .......... .......... .......... 62% 17.7M 6s
 33000K .......... .......... .......... .......... .......... 63% 6.20M 6s
 33050K .......... .......... .......... .......... .......... 63% 16.1M 6s
 33100K .......... .......... .......... .......... .......... 63% 23.3M 6s
 33150K .......... .......... .......... .......... .......... 63% 2.08M 6s
 33200K .......... .......... .......... .......... .......... 63% 24.6M 6s
 33250K .......... .......... .......... .......... .......... 63% 34.6M 6s
 33300K .......... .......... .......... .......... .......... 63% 5.14M 6s
 33350K .......... .......... .......... .......... .......... 63% 3.30M 6s
 33400K .......... .......... .......... .......... .......... 63% 27.8M 6s
 33450K .......... .......... .......... .......... .......... 63% 2.48M 6s
 33500K .......... .......... .......... .......... .......... 64% 4.52M 6s
 33550K .......... .......... .......... .......... .......... 64% 29.4M 6s
 33600K .......... .......... .......... .......... .......... 64% 7.68M 6s
 33650K .......... .......... .......... .......... .......... 64%  633K 6s
 33700K .......... .......... .......... .......... .......... 64% 1.30M 6s
 33750K .......... .......... .......... .......... .......... 64% 13.9M 6s
 33800K .......... .......... .......... .......... .......... 64% 4.35M 6s
 33850K .......... .......... .......... .......... .......... 64% 31.7M 6s
 33900K .......... .......... .......... .......... .......... 64% 32.9M 6s
 33950K .......... .......... .......... .......... .......... 64% 1.80M 6s
 34000K .......... .......... .......... .......... .......... 64% 6.69M 6s
 34050K .......... .......... .......... .......... .......... 65% 31.7M 6s
 34100K .......... .......... .......... .......... .......... 65% 28.4M 6s
 34150K .......... .......... .......... .......... .......... 65% 2.91M 6s
 34200K .......... .......... .......... .......... .......... 65% 2.51M 6s
 34250K .......... .......... .......... .......... .......... 65% 15.5M 6s
 34300K .......... .......... .......... .......... .......... 65% 7.49M 6s
 34350K .......... .......... .......... .......... .......... 65% 34.2M 6s
 34400K .......... .......... .......... .......... .......... 65% 7.51M 6s
 34450K .......... .......... .......... .......... .......... 65%  620K 6s
 34500K .......... .......... .......... .......... .......... 65% 1.29M 6s
 34550K .......... .......... .......... .......... .......... 66% 7.57M 6s
 34600K .......... .......... .......... .......... .......... 66% 8.48M 6s
 34650K .......... .......... .......... .......... .......... 66% 31.8M 6s
 34700K .......... .......... .......... .......... .......... 66% 26.6M 6s
 34750K .......... .......... .......... .......... .......... 66% 1.76M 6s
 34800K .......... .......... .......... .......... .......... 66% 10.5M 6s
 34850K .......... .......... .......... .......... .......... 66% 11.9M 6s
 34900K .......... .......... .......... .......... .......... 66% 29.6M 6s
 34950K .......... .......... .......... .......... .......... 66% 2.22M 6s
 35000K .......... .......... .......... .......... .......... 66% 2.86M 6s
 35050K .......... .......... .......... .......... .......... 66% 34.4M 6s
 35100K .......... .......... .......... .......... .......... 67% 12.7M 6s
 35150K .......... .......... .......... .......... .......... 67% 26.7M 6s
 35200K .......... .......... .......... .......... .......... 67% 7.50M 6s
 35250K .......... .......... .......... .......... .......... 67%  596K 6s
 35300K .......... .......... .......... .......... .......... 67% 1.04M 6s
 35350K .......... .......... .......... .......... .......... 67%  350M 6s
 35400K .......... .......... .......... .......... .......... 67% 21.5M 6s
 35450K .......... .......... .......... .......... .......... 67% 33.9M 6s
 35500K .......... .......... .......... .......... .......... 67% 21.6M 6s
 35550K .......... .......... .......... .......... .......... 67% 1.88M 6s
 35600K .......... .......... .......... .......... .......... 68% 11.2M 5s
 35650K .......... .......... .......... .......... .......... 68% 11.0M 5s
 35700K .......... .......... .......... .......... .......... 68% 7.63M 5s
 35750K .......... .......... .......... .......... .......... 68% 2.84M 5s
 35800K .......... .......... .......... .......... .......... 68% 2.81M 5s
 35850K .......... .......... .......... .......... .......... 68% 40.0M 5s
 35900K .......... .......... .......... .......... .......... 68% 15.5M 5s
 35950K .......... .......... .......... .......... .......... 68% 8.18M 5s
 36000K .......... .......... .......... .......... .......... 68% 22.4M 5s
 36050K .......... .......... .......... .......... .......... 68%  579K 5s
 36100K .......... .......... .......... .......... .......... 68% 1.06M 5s
 36150K .......... .......... .......... .......... .......... 69% 15.8M 5s
 36200K .......... .......... .......... .......... .......... 69% 28.2M 5s
 36250K .......... .......... .......... .......... .......... 69% 4.15M 5s
 36300K .......... .......... .......... .......... .......... 69% 22.7M 5s
 36350K .......... .......... .......... .......... .......... 69% 3.90M 5s
 36400K .......... .......... .......... .......... .......... 69% 10.6M 5s
 36450K .......... .......... .......... .......... .......... 69% 32.6M 5s
 36500K .......... .......... .......... .......... .......... 69% 5.80M 5s
 36550K .......... .......... .......... .......... .......... 69% 2.70M 5s
 36600K .......... .......... .......... .......... .......... 69% 30.7M 5s
 36650K .......... .......... .......... .......... .......... 70% 2.90M 5s
 36700K .......... .......... .......... .......... .......... 70% 9.06M 5s
 36750K .......... .......... .......... .......... .......... 70% 23.0M 5s
 36800K .......... .......... .......... .......... .......... 70% 31.9M 5s
 36850K .......... .......... .......... .......... .......... 70%  564K 5s
 36900K .......... .......... .......... .......... .......... 70% 1.06M 5s
 36950K .......... .......... .......... .......... .......... 70% 30.0M 5s
 37000K .......... .......... .......... .......... .......... 70% 22.1M 5s
 37050K .......... .......... .......... .......... .......... 70% 3.60M 5s
 37100K .......... .......... .......... .......... .......... 70% 37.6M 5s
 37150K .......... .......... .......... .......... .......... 70% 4.74M 5s
 37200K .......... .......... .......... .......... .......... 71% 13.8M 5s
 37250K .......... .......... .......... .......... .......... 71% 12.7M 5s
 37300K .......... .......... .......... .......... .......... 71% 5.92M 5s
 37350K .......... .......... .......... .......... .......... 71% 2.60M 5s
 37400K .......... .......... .......... .......... .......... 71% 32.7M 5s
 37450K .......... .......... .......... .......... .......... 71% 2.53M 5s
 37500K .......... .......... .......... .......... .......... 71% 28.7M 5s
 37550K .......... .......... .......... .......... .......... 71% 15.1M 5s
 37600K .......... .......... .......... .......... .......... 71% 34.3M 5s
 37650K .......... .......... .......... .......... .......... 71%  476K 5s
 37700K .......... .......... .......... .......... .......... 72% 1.53M 5s
 37750K .......... .......... .......... .......... .......... 72% 40.1M 5s
 37800K .......... .......... .......... .......... .......... 72% 31.7M 5s
 37850K .......... .......... .......... .......... .......... 72% 26.1M 5s
 37900K .......... .......... .......... .......... .......... 72% 2.35M 5s
 37950K .......... .......... .......... .......... .......... 72% 11.4M 5s
 38000K .......... .......... .......... .......... .......... 72% 37.5M 5s
 38050K .......... .......... .......... .......... .......... 72% 12.6M 5s
 38100K .......... .......... .......... .......... .......... 72% 2.74M 5s
 38150K .......... .......... .......... .......... .......... 72% 29.8M 5s
 38200K .......... .......... .......... .......... .......... 72% 4.48M 5s
 38250K .......... .......... .......... .......... .......... 73% 3.16M 5s
 38300K .......... .......... .......... .......... .......... 73% 30.8M 5s
 38350K .......... .......... .......... .......... .......... 73% 18.7M 5s
 38400K .......... .......... .......... .......... .......... 73% 13.4M 5s
 38450K .......... .......... .......... .......... .......... 73% 1.80M 4s
 38500K .......... .......... .......... .......... .......... 73%  541K 5s
 38550K .......... .......... .......... .......... .......... 73% 1.76M 4s
 38600K .......... .......... .......... .......... .......... 73% 38.0M 4s
 38650K .......... .......... .......... .......... .......... 73% 4.20M 4s
 38700K .......... .......... .......... .......... .......... 73% 28.2M 4s
 38750K .......... .......... .......... .......... .......... 74% 9.75M 4s
 38800K .......... .......... .......... .......... .......... 74% 29.4M 4s
 38850K .......... .......... .......... .......... .......... 74% 9.13M 4s
 38900K .......... .......... .......... .......... .......... 74% 3.20M 4s
 38950K .......... .......... .......... .......... .......... 74% 33.0M 4s
 39000K .......... .......... .......... .......... .......... 74% 3.74M 4s
 39050K .......... .......... .......... .......... .......... 74% 3.63M 4s
 39100K .......... .......... .......... .......... .......... 74% 3.70M 4s
 39150K .......... .......... .......... .......... .......... 74% 31.2M 4s
 39200K .......... .......... .......... .......... .......... 74% 3.96M 4s
 39250K .......... .......... .......... .......... .......... 74% 32.1M 4s
 39300K .......... .......... .......... .......... .......... 75%  567K 4s
 39350K .......... .......... .......... .......... .......... 75% 1.24M 4s
 39400K .......... .......... .......... .......... .......... 75% 4.77M 4s
 39450K .......... .......... .......... .......... .......... 75% 21.7M 4s
 39500K .......... .......... .......... .......... .......... 75% 31.7M 4s
 39550K .......... .......... .......... .......... .......... 75% 29.2M 4s
 39600K .......... .......... .......... .......... .......... 75% 20.4M 4s
 39650K .......... .......... .......... .......... .......... 75% 6.48M 4s
 39700K .......... .......... .......... .......... .......... 75% 21.6M 4s
 39750K .......... .......... .......... .......... .......... 75% 3.30M 4s
 39800K .......... .......... .......... .......... .......... 76% 28.8M 4s
 39850K .......... .......... .......... .......... .......... 76% 2.14M 4s
 39900K .......... .......... .......... .......... .......... 76% 2.97M 4s
 39950K .......... .......... .......... .......... .......... 76% 32.3M 4s
 40000K .......... .......... .......... .......... .......... 76% 4.28M 4s
 40050K .......... .......... .......... .......... .......... 76% 4.06M 4s
 40100K .......... .......... .......... .......... .......... 76% 1.39M 4s
 40150K .......... .......... .......... .......... .......... 76%  892K 4s
 40200K .......... .......... .......... .......... .......... 76% 1.81M 4s
 40250K .......... .......... .......... .......... .......... 76% 4.74M 4s
 40300K .......... .......... .......... .......... .......... 76% 24.1M 4s
 40350K .......... .......... .......... .......... .......... 77% 29.5M 4s
 40400K .......... .......... .......... .......... .......... 77% 5.35M 4s
 40450K .......... .......... .......... .......... .......... 77% 28.6M 4s
 40500K .......... .......... .......... .......... .......... 77% 24.0M 4s
 40550K .......... .......... .......... .......... .......... 77% 3.01M 4s
 40600K .......... .......... .......... .......... .......... 77% 6.77M 4s
 40650K .......... .......... .......... .......... .......... 77% 3.37M 4s
 40700K .......... .......... .......... .......... .......... 77% 31.7M 4s
 40750K .......... .......... .......... .......... .......... 77% 2.70M 4s
 40800K .......... .......... .......... .......... .......... 77% 7.85M 4s
 40850K .......... .......... .......... .......... .......... 78% 6.25M 4s
 40900K .......... .......... .......... .......... .......... 78% 4.92M 4s
 40950K .......... .......... .......... .......... .......... 78%  627K 4s
 41000K .......... .......... .......... .......... .......... 78% 1.30M 4s
 41050K .......... .......... .......... .......... .......... 78% 4.26M 4s
 41100K .......... .......... .......... .......... .......... 78% 31.2M 4s
 41150K .......... .......... .......... .......... .......... 78% 31.5M 4s
 41200K .......... .......... .......... .......... .......... 78% 3.35M 4s
 41250K .......... .......... .......... .......... .......... 78% 30.1M 4s
 41300K .......... .......... .......... .......... .......... 78% 23.5M 4s
 41350K .......... .......... .......... .......... .......... 78% 19.1M 4s
 41400K .......... .......... .......... .......... .......... 79% 4.74M 4s
 41450K .......... .......... .......... .......... .......... 79% 8.18M 3s
 41500K .......... .......... .......... .......... .......... 79% 3.47M 3s
 41550K .......... .......... .......... .......... .......... 79% 2.81M 3s
 41600K .......... .......... .......... .......... .......... 79% 5.58M 3s
 41650K .......... .......... .......... .......... .......... 79% 13.8M 3s
 41700K .......... .......... .......... .......... .......... 79% 21.0M 3s
 41750K .......... .......... .......... .......... .......... 79% 3.65M 3s
 41800K .......... .......... .......... .......... .......... 79%  637K 3s
 41850K .......... .......... .......... .......... .......... 79% 1.30M 3s
 41900K .......... .......... .......... .......... .......... 80% 4.81M 3s
 41950K .......... .......... .......... .......... .......... 80% 40.4M 3s
 42000K .......... .......... .......... .......... .......... 80% 9.97M 3s
 42050K .......... .......... .......... .......... .......... 80% 3.58M 3s
 42100K .......... .......... .......... .......... .......... 80% 28.3M 3s
 42150K .......... .......... .......... .......... .......... 80% 30.0M 3s
 42200K .......... .......... .......... .......... .......... 80% 33.6M 3s
 42250K .......... .......... .......... .......... .......... 80% 4.13M 3s
 42300K .......... .......... .......... .......... .......... 80% 14.3M 3s
 42350K .......... .......... .......... .......... .......... 80% 3.00M 3s
 42400K .......... .......... .......... .......... .......... 80% 3.11M 3s
 42450K .......... .......... .......... .......... .......... 81% 6.22M 3s
 42500K .......... .......... .......... .......... .......... 81% 12.4M 3s
 42550K .......... .......... .......... .......... .......... 81% 3.14M 3s
 42600K .......... .......... .......... .......... .......... 81% 36.1M 3s
 42650K .......... .......... .......... .......... .......... 81%  607K 3s
 42700K .......... .......... .......... .......... .......... 81% 1.46M 3s
 42750K .......... .......... .......... .......... .......... 81% 4.10M 3s
 42800K .......... .......... .......... .......... .......... 81% 30.2M 3s
 42850K .......... .......... .......... .......... .......... 81% 35.6M 3s
 42900K .......... .......... .......... .......... .......... 81% 3.29M 3s
 42950K .......... .......... .......... .......... .......... 82% 33.7M 3s
 43000K .......... .......... .......... .......... .......... 82% 5.18M 3s
 43050K .......... .......... .......... .......... .......... 82% 32.4M 3s
 43100K .......... .......... .......... .......... .......... 82% 3.90M 3s
 43150K .......... .......... .......... .......... .......... 82% 32.1M 3s
 43200K .......... .......... .......... .......... .......... 82% 4.62M 3s
 43250K .......... .......... .......... .......... .......... 82% 3.19M 3s
 43300K .......... .......... .......... .......... .......... 82% 3.56M 3s
 43350K .......... .......... .......... .......... .......... 82% 18.2M 3s
 43400K .......... .......... .......... .......... .......... 82% 28.7M 3s
 43450K .......... .......... .......... .......... .......... 82% 4.21M 3s
 43500K .......... .......... .......... .......... .......... 83%  607K 3s
 43550K .......... .......... .......... .......... .......... 83% 5.90M 3s
 43600K .......... .......... .......... .......... .......... 83% 1.49M 3s
 43650K .......... .......... .......... .......... .......... 83% 8.78M 3s
 43700K .......... .......... .......... .......... .......... 83% 33.9M 3s
 43750K .......... .......... .......... .......... .......... 83% 5.21M 3s
 43800K .......... .......... .......... .......... .......... 83% 9.05M 3s
 43850K .......... .......... .......... .......... .......... 83% 4.39M 3s
 43900K .......... .......... .......... .......... .......... 83% 33.0M 3s
 43950K .......... .......... .......... .......... .......... 83% 3.77M 3s
 44000K .......... .......... .......... .......... .......... 84% 34.3M 3s
 44050K .......... .......... .......... .......... .......... 84% 4.95M 3s
 44100K .......... .......... .......... .......... .......... 84% 28.0M 3s
 44150K .......... .......... .......... .......... .......... 84% 2.21M 3s
 44200K .......... .......... .......... .......... .......... 84% 8.12M 3s
 44250K .......... .......... .......... .......... .......... 84% 33.1M 3s
 44300K .......... .......... .......... .......... .......... 84% 1.93M 3s
 44350K .......... .......... .......... .......... .......... 84%  939K 3s
 44400K .......... .......... .......... .......... .......... 84% 2.03M 3s
 44450K .......... .......... .......... .......... .......... 84% 1.10M 3s
 44500K .......... .......... .......... .......... .......... 84% 21.7M 3s
 44550K .......... .......... .......... .......... .......... 85% 19.9M 2s
 44600K .......... .......... .......... .......... .......... 85% 20.8M 2s
 44650K .......... .......... .......... .......... .......... 85% 17.1M 2s
 44700K .......... .......... .......... .......... .......... 85% 4.17M 2s
 44750K .......... .......... .......... .......... .......... 85% 5.22M 2s
 44800K .......... .......... .......... .......... .......... 85% 29.4M 2s
 44850K .......... .......... .......... .......... .......... 85% 25.3M 2s
 44900K .......... .......... .......... .......... .......... 85% 9.63M 2s
 44950K .......... .......... .......... .......... .......... 85% 4.13M 2s
 45000K .......... .......... .......... .......... .......... 85% 2.33M 2s
 45050K .......... .......... .......... .......... .......... 86% 9.13M 2s
 45100K .......... .......... .......... .......... .......... 86% 31.9M 2s
 45150K .......... .......... .......... .......... .......... 86% 2.17M 2s
 45200K .......... .......... .......... .......... .......... 86% 10.7M 2s
 45250K .......... .......... .......... .......... .......... 86%  651K 2s
 45300K .......... .......... .......... .......... .......... 86% 1.13M 2s
 45350K .......... .......... .......... .......... .......... 86% 26.9M 2s
 45400K .......... .......... .......... .......... .......... 86% 33.2M 2s
 45450K .......... .......... .......... .......... .......... 86% 23.5M 2s
 45500K .......... .......... .......... .......... .......... 86% 5.71M 2s
 45550K .......... .......... .......... .......... .......... 86% 34.5M 2s
 45600K .......... .......... .......... .......... .......... 87% 3.41M 2s
 45650K .......... .......... .......... .......... .......... 87% 30.8M 2s
 45700K .......... .......... .......... .......... .......... 87% 4.69M 2s
 45750K .......... .......... .......... .......... .......... 87% 29.9M 2s
 45800K .......... .......... .......... .......... .......... 87% 30.2M 2s
 45850K .......... .......... .......... .......... .......... 87% 6.37M 2s
 45900K .......... .......... .......... .......... .......... 87% 1.61M 2s
 45950K .......... .......... .......... .......... .......... 87% 25.1M 2s
 46000K .......... .......... .......... .......... .......... 87% 32.5M 2s
 46050K .......... .......... .......... .......... .......... 87% 2.83M 2s
 46100K .......... .......... .......... .......... .......... 88% 30.6M 2s
 46150K .......... .......... .......... .......... .......... 88%  655K 2s
 46200K .......... .......... .......... .......... .......... 88% 1.06M 2s
 46250K .......... .......... .......... .......... .......... 88% 4.57M 2s
 46300K .......... .......... .......... .......... .......... 88% 28.2M 2s
 46350K .......... .......... .......... .......... .......... 88% 34.3M 2s
 46400K .......... .......... .......... .......... .......... 88% 29.7M 2s
 46450K .......... .......... .......... .......... .......... 88% 5.98M 2s
 46500K .......... .......... .......... .......... .......... 88% 12.6M 2s
 46550K .......... .......... .......... .......... .......... 88% 33.9M 2s
 46600K .......... .......... .......... .......... .......... 88% 4.27M 2s
 46650K .......... .......... .......... .......... .......... 89% 30.8M 2s
 46700K .......... .......... .......... .......... .......... 89% 4.36M 2s
 46750K .......... .......... .......... .......... .......... 89% 26.1M 2s
 46800K .......... .......... .......... .......... .......... 89% 1.75M 2s
 46850K .......... .......... .......... .......... .......... 89% 18.8M 2s
 46900K .......... .......... .......... .......... .......... 89% 4.55M 2s
 46950K .......... .......... .......... .......... .......... 89% 9.15M 2s
 47000K .......... .......... .......... .......... .......... 89% 6.52M 2s
 47050K .......... .......... .......... .......... .......... 89%  708K 2s
 47100K .......... .......... .......... .......... .......... 89% 1.03M 2s
 47150K .......... .......... .......... .......... .......... 90% 5.57M 2s
 47200K .......... .......... .......... .......... .......... 90% 35.3M 2s
 47250K .......... .......... .......... .......... .......... 90% 3.83M 2s
 47300K .......... .......... .......... .......... .......... 90% 30.7M 2s
 47350K .......... .......... .......... .......... .......... 90% 31.6M 2s
 47400K .......... .......... .......... .......... .......... 90% 34.3M 2s
 47450K .......... .......... .......... .......... .......... 90% 5.41M 2s
 47500K .......... .......... .......... .......... .......... 90% 18.6M 2s
 47550K .......... .......... .......... .......... .......... 90% 31.0M 2s
 47600K .......... .......... .......... .......... .......... 90% 4.59M 1s
 47650K .......... .......... .......... .......... .......... 90% 3.75M 1s
 47700K .......... .......... .......... .......... .......... 91% 5.56M 1s
 47750K .......... .......... .......... .......... .......... 91% 4.79M 1s
 47800K .......... .......... .......... .......... .......... 91% 5.03M 1s
 47850K .......... .......... .......... .......... .......... 91% 4.77M 1s
 47900K .......... .......... .......... .......... .......... 91% 11.6M 1s
 47950K .......... .......... .......... .......... .......... 91%  728K 1s
 48000K .......... .......... .......... .......... .......... 91% 3.35M 1s
 48050K .......... .......... .......... .......... .......... 91% 1.20M 1s
 48100K .......... .......... .......... .......... .......... 91% 27.5M 1s
 48150K .......... .......... .......... .......... .......... 91% 3.23M 1s
 48200K .......... .......... .......... .......... .......... 92% 4.66M 1s
 48250K .......... .......... .......... .......... .......... 92% 33.5M 1s
 48300K .......... .......... .......... .......... .......... 92% 36.4M 1s
 48350K .......... .......... .......... .......... .......... 92% 28.9M 1s
 48400K .......... .......... .......... .......... .......... 92% 5.66M 1s
 48450K .......... .......... .......... .......... .......... 92% 18.1M 1s
 48500K .......... .......... .......... .......... .......... 92% 29.2M 1s
 48550K .......... .......... .......... .......... .......... 92% 29.6M 1s
 48600K .......... .......... .......... .......... .......... 92% 4.12M 1s
 48650K .......... .......... .......... .......... .......... 92% 2.43M 1s
 48700K .......... .......... .......... .......... .......... 93% 32.2M 1s
 48750K .......... .......... .......... .......... .......... 93% 5.00M 1s
 48800K .......... .......... .......... .......... .......... 93% 5.12M 1s
 48850K .......... .......... .......... .......... .......... 93% 1.36M 1s
 48900K .......... .......... .......... .......... .......... 93% 1.02M 1s
 48950K .......... .......... .......... .......... .......... 93% 1.26M 1s
 49000K .......... .......... .......... .......... .......... 93% 11.5M 1s
 49050K .......... .......... .......... .......... .......... 93% 15.6M 1s
 49100K .......... .......... .......... .......... .......... 93% 3.29M 1s
 49150K .......... .......... .......... .......... .......... 93% 4.67M 1s
 49200K .......... .......... .......... .......... .......... 93% 4.13M 1s
 49250K .......... .......... .......... .......... .......... 94% 27.8M 1s
 49300K .......... .......... .......... .......... .......... 94% 27.9M 1s
 49350K .......... .......... .......... .......... .......... 94% 31.2M 1s
 49400K .......... .......... .......... .......... .......... 94% 5.61M 1s
 49450K .......... .......... .......... .......... .......... 94% 21.9M 1s
 49500K .......... .......... .......... .......... .......... 94% 28.3M 1s
 49550K .......... .......... .......... .......... .......... 94% 14.4M 1s
 49600K .......... .......... .......... .......... .......... 94% 1.36M 1s
 49650K .......... .......... .......... .......... .......... 94% 25.1M 1s
 49700K .......... .......... .......... .......... .......... 94% 29.7M 1s
 49750K .......... .......... .......... .......... .......... 95% 33.6M 1s
 49800K .......... .......... .......... .......... .......... 95% 1.39M 1s
 49850K .......... .......... .......... .......... .......... 95% 1.04M 1s
 49900K .......... .......... .......... .......... .......... 95% 1.59M 1s
 49950K .......... .......... .......... .......... .......... 95% 2.40M 1s
 50000K .......... .......... .......... .......... .......... 95% 31.3M 1s
 50050K .......... .......... .......... .......... .......... 95% 6.15M 1s
 50100K .......... .......... .......... .......... .......... 95% 4.61M 1s
 50150K .......... .......... .......... .......... .......... 95% 2.35M 1s
 50200K .......... .......... .......... .......... .......... 95% 33.2M 1s
 50250K .......... .......... .......... .......... .......... 95% 28.8M 1s
 50300K .......... .......... .......... .......... .......... 96% 29.4M 1s
 50350K .......... .......... .......... .......... .......... 96% 6.16M 1s
 50400K .......... .......... .......... .......... .......... 96% 26.2M 1s
 50450K .......... .......... .......... .......... .......... 96% 27.7M 1s
 50500K .......... .......... .......... .......... .......... 96% 37.2M 1s
 50550K .......... .......... .......... .......... .......... 96% 1.80M 1s
 50600K .......... .......... .......... .......... .......... 96% 4.42M 1s
 50650K .......... .......... .......... .......... .......... 96% 30.3M 1s
 50700K .......... .......... .......... .......... .......... 96% 30.2M 1s
 50750K .......... .......... .......... .......... .......... 96% 8.20M 0s
 50800K .......... .......... .......... .......... .......... 97%  861K 0s
 50850K .......... .......... .......... .......... .......... 97% 3.85M 0s
 50900K .......... .......... .......... .......... .......... 97%  846K 0s
 50950K .......... .......... .......... .......... .......... 97% 21.9M 0s
 51000K .......... .......... .......... .......... .......... 97% 26.3M 0s
 51050K .......... .......... .......... .......... .......... 97% 7.39M 0s
 51100K .......... .......... .......... .......... .......... 97% 2.58M 0s
 51150K .......... .......... .......... .......... .......... 97% 3.41M 0s
 51200K .......... .......... .......... .......... .......... 97% 25.8M 0s
 51250K .......... .......... .......... .......... .......... 97% 26.3M 0s
 51300K .......... .......... .......... .......... .......... 97% 35.4M 0s
 51350K .......... .......... .......... .......... .......... 98% 5.79M 0s
 51400K .......... .......... .......... .......... .......... 98% 21.4M 0s
 51450K .......... .......... .......... .......... .......... 98% 20.9M 0s
 51500K .......... .......... .......... .......... .......... 98% 29.5M 0s
 51550K .......... .......... .......... .......... .......... 98% 1.41M 0s
 51600K .......... .......... .......... .......... .......... 98% 21.5M 0s
 51650K .......... .......... .......... .......... .......... 98% 24.8M 0s
 51700K .......... .......... .......... .......... .......... 98% 20.8M 0s
 51750K .......... .......... .......... .......... .......... 98% 1.88M 0s
 51800K .......... .......... .......... .......... .......... 98% 1.31M 0s
 51850K .......... .......... .......... .......... .......... 99% 1.37M 0s
 51900K .......... .......... .......... .......... .......... 99% 2.14M 0s
 51950K .......... .......... .......... .......... .......... 99% 22.8M 0s
 52000K .......... .......... .......... .......... .......... 99% 30.3M 0s
 52050K .......... .......... .......... .......... .......... 99% 11.7M 0s
 52100K .......... .......... .......... .......... .......... 99% 1.47M 0s
 52150K .......... .......... .......... .......... .......... 99% 34.2M 0s
 52200K .......... .......... .......... .......... .......... 99% 14.1M 0s
 52250K .......... .......... .......... .......... .......... 99% 29.9M 0s
 52300K .......... .......... .......... .......... .......... 99% 9.93M 0s
 52350K .......... .......... .......... .......... .......... 99% 12.7M 0s
 52400K .......... .......                                    100% 39.2M=16s

2018-07-07 21:02:15 (3.19 MB/s) - 'apache-activemq-5.13.2-bin.tar.gz' saved [53675823/53675823]

Removing intermediate container dcde3712ec88
 ---> f70b07cd0557
Step 11/20 : RUN tar xzf apache-activemq-5.13.2-bin.tar.gz && rm apache-activemq-5.13.2-bin.tar.gz
 ---> Running in 4a99b3cd3986
Removing intermediate container 4a99b3cd3986
 ---> 07036494cb0f
Step 12/20 : RUN mv apache-activemq-5.13.2 /opt
 ---> Running in ef7a8b15486b
Removing intermediate container ef7a8b15486b
 ---> 9d67cc43bcbd
Step 13/20 : RUN ln -sf /opt/apache-activemq-5.13.2/ /opt/activemq
 ---> Running in 1cf4d190db99
Removing intermediate container 1cf4d190db99
 ---> 55e2590b9418
Step 14/20 : RUN adduser -system activemq
 ---> Running in b8cd1192adcd
Adding system user `activemq' (UID 103) ...
Adding new user `activemq' (UID 103) with group `nogroup' ...
Creating home directory `/home/activemq' ...
Removing intermediate container b8cd1192adcd
 ---> 26b29ace25b8
Step 15/20 : RUN sed -i "s#activemq:/bin/false#activemq:/bin/bash#g" /etc/passwd
 ---> Running in e89a94364817
Removing intermediate container e89a94364817
 ---> ff4c4295698d
Step 16/20 : RUN chown -R activemq: /opt/apache-activemq-5.13.2/
 ---> Running in 1eec07c9f0af
Removing intermediate container 1eec07c9f0af
 ---> 0376a2e5efce
Step 17/20 : RUN ln -sf /opt/activemq/bin/activemq /etc/init.d/
 ---> Running in dbcf70008bab
Removing intermediate container dbcf70008bab
 ---> fa9ce56d1caf
Step 18/20 : COPY installActivemq.sh /tmp/installActivemq.sh
 ---> 81d2ef6702ff
Step 19/20 : RUN chmod +x /tmp/installActivemq.sh
 ---> Running in fe069f471740
Removing intermediate container fe069f471740
 ---> bae0e05ee3eb
Step 20/20 : CMD ["/tmp/installActivemq.sh"]
 ---> Running in 2ccb8ad0c9bf
Removing intermediate container 2ccb8ad0c9bf
 ---> b107bf8b265f
Successfully built b107bf8b265f
Successfully tagged matecat-playgrond_amq:latest
WARNING: Image for service amq was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Building mysql
Step 1/22 : FROM ostico/trusty-base:latest
 ---> 1400f28c31cd
Step 2/22 : RUN dpkg-divert --local --rename --add /sbin/initctl
 ---> Running in c880f7d2a7b5
Leaving 'local diversion of /sbin/initctl to /sbin/initctl.distrib'
Removing intermediate container c880f7d2a7b5
 ---> d117529e1c2e
Step 3/22 : RUN ln -snvf /bin/true /sbin/initctl
 ---> Running in d87a57918e98
'/sbin/initctl' -> '/bin/true'
Removing intermediate container d87a57918e98
 ---> 3fdaf6571d31
Step 4/22 : ENV DEBIAN_FRONTEND noninteractive
 ---> Running in e91634c6504b
Removing intermediate container e91634c6504b
 ---> 745fa2af94d5
Step 5/22 : COPY mysql.keyFile.asc /tmp/mysql.keyFile.asc
 ---> a9bd52b7e6bb
Step 6/22 : RUN gpg --import /tmp/mysql.keyFile.asc
 ---> Running in 526aed90175a
gpg: directory `/root/.gnupg' created
gpg: new configuration file `/root/.gnupg/gpg.conf' created
gpg: WARNING: options in `/root/.gnupg/gpg.conf' are not yet active during this run
gpg: keyring `/root/.gnupg/secring.gpg' created
gpg: keyring `/root/.gnupg/pubring.gpg' created
gpg: /root/.gnupg/trustdb.gpg: trustdb created
gpg: key 5072E1F5: public key "MySQL Release Engineering <mysql-build@oss.oracle.com>" imported
gpg: Total number processed: 1
gpg:               imported: 1
gpg: no ultimately trusted keys found
Removing intermediate container 526aed90175a
 ---> 5d5b98edd33e
Step 7/22 : RUN echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" >> /etc/apt/sources.list.d/mysql.list
 ---> Running in 88c49a1e9b15
Removing intermediate container 88c49a1e9b15
 ---> 996aeb402fab
Step 8/22 : RUN echo "deb http://repo.mysql.com/apt/ubuntu/ trusty connector-python-2.0" >> /etc/apt/sources.list.d/mysql.list
 ---> Running in c3b3386b8b6c
Removing intermediate container c3b3386b8b6c
 ---> 788d82330b92
Step 9/22 : RUN apt-get update
 ---> Running in b511974095c0
Get:1 http://repo.mysql.com trusty InRelease [33.5 kB]
Ign http://archive.ubuntu.com trusty InRelease
Get:2 http://archive.ubuntu.com trusty-updates InRelease [65.9 kB]
Ign http://repo.mysql.com trusty InRelease
Get:3 http://archive.ubuntu.com trusty-security InRelease [65.9 kB]
Get:4 http://repo.mysql.com trusty/mysql-5.7 amd64 Packages [2841 B]
Hit http://archive.ubuntu.com trusty Release.gpg
Get:5 http://archive.ubuntu.com trusty-updates/main Sources [515 kB]
Get:6 http://repo.mysql.com trusty/connector-python-2.0 amd64 Packages [756 B]
Get:7 http://archive.ubuntu.com trusty-updates/restricted Sources [6449 B]
Get:8 http://archive.ubuntu.com trusty-updates/universe Sources [254 kB]
Get:9 http://archive.ubuntu.com trusty-updates/main amd64 Packages [1353 kB]
Get:10 http://archive.ubuntu.com trusty-updates/restricted amd64 Packages [21.4 kB]
Get:11 http://archive.ubuntu.com trusty-updates/universe amd64 Packages [592 kB]
Hit http://archive.ubuntu.com trusty Release
Get:12 http://archive.ubuntu.com trusty-security/main Sources [201 kB]
Get:13 http://archive.ubuntu.com trusty-security/restricted Sources [5050 B]
Get:14 http://archive.ubuntu.com trusty-security/universe Sources [89.7 kB]
Get:15 http://archive.ubuntu.com trusty-security/main amd64 Packages [929 kB]
Get:16 http://archive.ubuntu.com trusty-security/restricted amd64 Packages [18.1 kB]
Get:17 http://archive.ubuntu.com trusty-security/universe amd64 Packages [297 kB]
Hit http://archive.ubuntu.com trusty/main Sources
Hit http://archive.ubuntu.com trusty/restricted Sources
Hit http://archive.ubuntu.com trusty/universe Sources
Hit http://archive.ubuntu.com trusty/main amd64 Packages
Hit http://archive.ubuntu.com trusty/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty/universe amd64 Packages
Fetched 4449 kB in 8s (501 kB/s)
Reading package lists...
W: GPG error: http://repo.mysql.com trusty InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8C718D3B5072E1F5
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-updates_restricted_binary-amd64_Packages.gz is not what the server reported 21381 23467
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-security_restricted_binary-amd64_Packages.gz is not what the server reported 18072 20231
Removing intermediate container b511974095c0
 ---> c92ade35870c
Step 10/22 : RUN apt-get install -y --force-yes mysql-server libev4
 ---> Running in 9c0a29176535
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
  libdbd-mysql-perl libdbi-perl libterm-readkey-perl
Use 'apt-get autoremove' to remove them.
The following extra packages will be installed:
  libmecab2 libnuma1 mysql-client mysql-common mysql-community-client
  mysql-community-server
The following packages will be REMOVED:
  mysql-client-5.5 mysql-client-core-5.5
The following NEW packages will be installed:
  libev4 libmecab2 libnuma1 mysql-community-client mysql-community-server
  mysql-server
The following packages will be upgraded:
  mysql-client mysql-common
2 upgraded, 6 newly installed, 2 to remove and 123 not upgraded.
Need to get 32.0 MB of archives.
After this operation, 200 MB of additional disk space will be used.
WARNING: The following packages cannot be authenticated!
  mysql-client mysql-common mysql-community-client mysql-community-server
  mysql-server
Get:1 http://repo.mysql.com/apt/ubuntu/ trusty/mysql-5.7 mysql-client amd64 5.7.22-1ubuntu14.04 [12.4 kB]
Get:2 http://repo.mysql.com/apt/ubuntu/ trusty/mysql-5.7 mysql-common amd64 5.7.22-1ubuntu14.04 [15.2 kB]
Get:3 http://repo.mysql.com/apt/ubuntu/ trusty/mysql-5.7 mysql-community-client amd64 5.7.22-1ubuntu14.04 [7098 kB]
Get:4 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libnuma1 amd64 2.0.9~rc5-1ubuntu3.14.04.2 [20.5 kB]
Get:5 http://repo.mysql.com/apt/ubuntu/ trusty/mysql-5.7 mysql-community-server amd64 5.7.22-1ubuntu14.04 [24.5 MB]
Get:6 http://archive.ubuntu.com/ubuntu/ trusty/universe libmecab2 amd64 0.996-1.1 [244 kB]
Get:7 http://archive.ubuntu.com/ubuntu/ trusty/universe libev4 amd64 1:4.15-3 [29.6 kB]
Get:8 http://repo.mysql.com/apt/ubuntu/ trusty/mysql-5.7 mysql-server amd64 5.7.22-1ubuntu14.04 [12.4 kB]
Preconfiguring packages ...
Fetched 32.0 MB in 2s (11.9 MB/s)
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../mysql-client_5.7.22-1ubuntu14.04_amd64.deb ...
Unpacking mysql-client (5.7.22-1ubuntu14.04) over (5.5.49-0ubuntu0.14.04.1) ...
(Reading database ... 19822 files and directories currently installed.)
Removing mysql-client-5.5 (5.5.49-0ubuntu0.14.04.1) ...
Removing mysql-client-core-5.5 (5.5.49-0ubuntu0.14.04.1) ...
(Reading database ... 19765 files and directories currently installed.)
Preparing to unpack .../mysql-common_5.7.22-1ubuntu14.04_amd64.deb ...
Unpacking mysql-common (5.7.22-1ubuntu14.04) over (5.5.49-0ubuntu0.14.04.1) ...
Selecting previously unselected package libnuma1:amd64.
Preparing to unpack .../libnuma1_2.0.9~rc5-1ubuntu3.14.04.2_amd64.deb ...
Unpacking libnuma1:amd64 (2.0.9~rc5-1ubuntu3.14.04.2) ...
Selecting previously unselected package mysql-community-client.
Preparing to unpack .../mysql-community-client_5.7.22-1ubuntu14.04_amd64.deb ...
Unpacking mysql-community-client (5.7.22-1ubuntu14.04) ...
Selecting previously unselected package libmecab2.
Preparing to unpack .../libmecab2_0.996-1.1_amd64.deb ...
Unpacking libmecab2 (0.996-1.1) ...
Selecting previously unselected package mysql-community-server.
Preparing to unpack .../mysql-community-server_5.7.22-1ubuntu14.04_amd64.deb ...
Unpacking mysql-community-server (5.7.22-1ubuntu14.04) ...
Selecting previously unselected package mysql-server.
Preparing to unpack .../mysql-server_5.7.22-1ubuntu14.04_amd64.deb ...
Unpacking mysql-server (5.7.22-1ubuntu14.04) ...
Selecting previously unselected package libev4.
Preparing to unpack .../libev4_1%3a4.15-3_amd64.deb ...
Unpacking libev4 (1:4.15-3) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up mysql-common (5.7.22-1ubuntu14.04) ...
update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.cnf (my.cnf) in auto mode
update-alternatives: warning: not replacing /etc/mysql/my.cnf with a link
Setting up libnuma1:amd64 (2.0.9~rc5-1ubuntu3.14.04.2) ...
Setting up mysql-community-client (5.7.22-1ubuntu14.04) ...
Setting up mysql-client (5.7.22-1ubuntu14.04) ...
Setting up libmecab2 (0.996-1.1) ...
Setting up mysql-community-server (5.7.22-1ubuntu14.04) ...
update-alternatives: using /etc/mysql/mysql.cnf to provide /etc/mysql/my.cnf (my.cnf) in auto mode
invoke-rc.d: policy-rc.d denied execution of start.
Setting up libev4 (1:4.15-3) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up mysql-server (5.7.22-1ubuntu14.04) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
Removing intermediate container 9c0a29176535
 ---> 0c39fa13004d
Step 11/22 : WORKDIR /tmp
Removing intermediate container dc854a96b576
 ---> 503bc115b6aa
Step 12/22 : RUN wget https://www.percona.com/downloads/XtraBackup/Percona-XtraBackup-2.4.5/binary/debian/trusty/x86_64/percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb
 ---> Running in c4aec60ec3f0
--2018-07-07 21:04:27--  https://www.percona.com/downloads/XtraBackup/Percona-XtraBackup-2.4.5/binary/debian/trusty/x86_64/percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb
Resolving www.percona.com (www.percona.com)... 74.121.199.234
Connecting to www.percona.com (www.percona.com)|74.121.199.234|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5994802 (5.7M) [application/x-debian-package]
Saving to: 'percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb'

     0K .......... .......... .......... .......... ..........  0%  161K 36s
    50K .......... .......... .......... .......... ..........  1%  324K 27s
   100K .......... .......... .......... .......... ..........  2%  295K 24s
   150K .......... .......... .......... .......... ..........  3% 4.66M 18s
   200K .......... .......... .......... .......... ..........  4% 33.8M 14s
   250K .......... .......... .......... .......... ..........  5%  346K 15s
   300K .......... .......... .......... .......... ..........  5% 11.6M 12s
   350K .......... .......... .......... .......... ..........  6% 6.40M 11s
   400K .......... .......... .......... .......... ..........  7% 2.02M 10s
   450K .......... .......... .......... .......... ..........  8%  405K 10s
   500K .......... .......... .......... .......... ..........  9% 4.17M 9s
   550K .......... .......... .......... .......... .......... 10% 16.3M 8s
   600K .......... .......... .......... .......... .......... 11% 2.85M 8s
   650K .......... .......... .......... .......... .......... 11%  393K 8s
   700K .......... .......... .......... .......... .......... 12% 6.49M 8s
   750K .......... .......... .......... .......... .......... 13% 3.20M 7s
   800K .......... .......... .......... .......... .......... 14% 8.99M 7s
   850K .......... .......... .......... .......... .......... 15%  375K 7s
   900K .......... .......... .......... .......... .......... 16% 30.3M 7s
   950K .......... .......... .......... .......... .......... 17% 2.64M 6s
  1000K .......... .......... .......... .......... .......... 17% 15.2M 6s
  1050K .......... .......... .......... .......... .......... 18%  379K 6s
  1100K .......... .......... .......... .......... .......... 19% 12.2M 6s
  1150K .......... .......... .......... .......... .......... 20% 3.21M 6s
  1200K .......... .......... .......... .......... .......... 21% 5.70M 5s
  1250K .......... .......... .......... .......... .......... 22%  456K 5s
  1300K .......... .......... .......... .......... .......... 23% 2.32M 5s
  1350K .......... .......... .......... .......... .......... 23% 12.6M 5s
  1400K .......... .......... .......... .......... .......... 24% 2.39M 5s
  1450K .......... .......... .......... .......... .......... 25% 8.81M 5s
  1500K .......... .......... .......... .......... .......... 26%  414K 5s
  1550K .......... .......... .......... .......... .......... 27% 8.61M 5s
  1600K .......... .......... .......... .......... .......... 28% 9.90M 4s
  1650K .......... .......... .......... .......... .......... 29% 2.62M 4s
  1700K .......... .......... .......... .......... .......... 29% 4.56M 4s
  1750K .......... .......... .......... .......... .......... 30%  435K 4s
  1800K .......... .......... .......... .......... .......... 31% 2.03M 4s
  1850K .......... .......... .......... .......... .......... 32% 29.1M 4s
  1900K .......... .......... .......... .......... .......... 33% 7.68M 4s
  1950K .......... .......... .......... .......... .......... 34% 5.32M 4s
  2000K .......... .......... .......... .......... .......... 35%  444K 4s
  2050K .......... .......... .......... .......... .......... 35% 1.95M 4s
  2100K .......... .......... .......... .......... .......... 36% 5.53M 4s
  2150K .......... .......... .......... .......... .......... 37% 7.90M 3s
  2200K .......... .......... .......... .......... .......... 38% 16.7M 3s
  2250K .......... .......... .......... .......... .......... 39%  526K 3s
  2300K .......... .......... .......... .......... .......... 40% 1.50M 3s
  2350K .......... .......... .......... .......... .......... 40% 2.75M 3s
  2400K .......... .......... .......... .......... .......... 41% 9.44M 3s
  2450K .......... .......... .......... .......... .......... 42% 3.56M 3s
  2500K .......... .......... .......... .......... .......... 43% 14.9M 3s
  2550K .......... .......... .......... .......... .......... 44%  513K 3s
  2600K .......... .......... .......... .......... .......... 45% 2.30M 3s
  2650K .......... .......... .......... .......... .......... 46% 1.72M 3s
  2700K .......... .......... .......... .......... .......... 46% 20.6M 3s
  2750K .......... .......... .......... .......... .......... 47% 9.61M 3s
  2800K .......... .......... .......... .......... .......... 48% 5.35M 3s
  2850K .......... .......... .......... .......... .......... 49%  570K 3s
  2900K .......... .......... .......... .......... .......... 50% 1.99M 2s
  2950K .......... .......... .......... .......... .......... 51% 1.61M 2s
  3000K .......... .......... .......... .......... .......... 52% 4.91M 2s
  3050K .......... .......... .......... .......... .......... 52% 27.1M 2s
  3100K .......... .......... .......... .......... .......... 53% 21.2M 2s
  3150K .......... .......... .......... .......... .......... 54%  589K 2s
  3200K .......... .......... .......... .......... .......... 55% 2.09M 2s
  3250K .......... .......... .......... .......... .......... 56% 3.25M 2s
  3300K .......... .......... .......... .......... .......... 57% 1.53M 2s
  3350K .......... .......... .......... .......... .......... 58% 6.48M 2s
  3400K .......... .......... .......... .......... .......... 58% 13.0M 2s
  3450K .......... .......... .......... .......... .......... 59% 6.67M 2s
  3500K .......... .......... .......... .......... .......... 60%  585K 2s
  3550K .......... .......... .......... .......... .......... 61% 3.53M 2s
  3600K .......... .......... .......... .......... .......... 62% 2.22M 2s
  3650K .......... .......... .......... .......... .......... 63% 2.19M 2s
  3700K .......... .......... .......... .......... .......... 64% 9.77M 2s
  3750K .......... .......... .......... .......... .......... 64% 12.1M 2s
  3800K .......... .......... .......... .......... .......... 65%  931K 2s
  3850K .......... .......... .......... .......... .......... 66% 1.39M 1s
  3900K .......... .......... .......... .......... .......... 67% 3.17M 1s
  3950K .......... .......... .......... .......... .......... 68% 2.52M 1s
  4000K .......... .......... .......... .......... .......... 69% 2.17M 1s
  4050K .......... .......... .......... .......... .......... 70% 8.59M 1s
  4100K .......... .......... .......... .......... .......... 70% 9.79M 1s
  4150K .......... .......... .......... .......... .......... 71% 7.95M 1s
  4200K .......... .......... .......... .......... .......... 72%  761K 1s
  4250K .......... .......... .......... .......... .......... 73% 2.20M 1s
  4300K .......... .......... .......... .......... .......... 74% 2.99M 1s
  4350K .......... .......... .......... .......... .......... 75% 1.78M 1s
  4400K .......... .......... .......... .......... .......... 76% 2.27M 1s
  4450K .......... .......... .......... .......... .......... 76% 16.1M 1s
  4500K .......... .......... .......... .......... .......... 77% 37.2M 1s
  4550K .......... .......... .......... .......... .......... 78% 1.01M 1s
  4600K .......... .......... .......... .......... .......... 79% 1.42M 1s
  4650K .......... .......... .......... .......... .......... 80% 3.45M 1s
  4700K .......... .......... .......... .......... .......... 81% 2.44M 1s
  4750K .......... .......... .......... .......... .......... 81% 2.75M 1s
  4800K .......... .......... .......... .......... .......... 82% 2.53M 1s
  4850K .......... .......... .......... .......... .......... 83% 13.9M 1s
  4900K .......... .......... .......... .......... .......... 84% 16.1M 1s
  4950K .......... .......... .......... .......... .......... 85% 1.16M 1s
  5000K .......... .......... .......... .......... .......... 86% 1.36M 1s
  5050K .......... .......... .......... .......... .......... 87% 3.31M 1s
  5100K .......... .......... .......... .......... .......... 87% 3.44M 0s
  5150K .......... .......... .......... .......... .......... 88% 2.16M 0s
  5200K .......... .......... .......... .......... .......... 89% 2.48M 0s
  5250K .......... .......... .......... .......... .......... 90% 7.95M 0s
  5300K .......... .......... .......... .......... .......... 91% 27.7M 0s
  5350K .......... .......... .......... .......... .......... 92% 1.97M 0s
  5400K .......... .......... .......... .......... .......... 93% 1.24M 0s
  5450K .......... .......... .......... .......... .......... 93% 2.97M 0s
  5500K .......... .......... .......... .......... .......... 94% 2.40M 0s
  5550K .......... .......... .......... .......... .......... 95% 3.55M 0s
  5600K .......... .......... .......... .......... .......... 96% 2.03M 0s
  5650K .......... .......... .......... .......... .......... 97% 4.57M 0s
  5700K .......... .......... .......... .......... .......... 98% 3.19M 0s
  5750K .......... .......... .......... .......... .......... 99% 32.8M 0s
  5800K .......... .......... .......... .......... .......... 99% 1.71M 0s
  5850K ....                                                  100% 15.5M=3.7s

2018-07-07 21:04:32 (1.53 MB/s) - 'percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb' saved [5994802/5994802]

Removing intermediate container c4aec60ec3f0
 ---> 7580aab99344
Step 13/22 : RUN dpkg -i percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb
 ---> Running in 0f76dc49f584
Selecting previously unselected package percona-xtrabackup-24.
(Reading database ... 20016 files and directories currently installed.)
Preparing to unpack percona-xtrabackup-24_2.4.5-1.trusty_amd64.deb ...
Unpacking percona-xtrabackup-24 (2.4.5-1.trusty) ...
Setting up percona-xtrabackup-24 (2.4.5-1.trusty) ...
Removing intermediate container 0f76dc49f584
 ---> b4757447914f
Step 14/22 : COPY run.sh /tmp/run.sh
 ---> f710f7578286
Step 15/22 : RUN chmod +x /tmp/run.sh
 ---> Running in 071a2559e603
Removing intermediate container 071a2559e603
 ---> d3aa8a074996
Step 16/22 : COPY my.cnf /etc/mysql/my.cnf
 ---> 31e435027637
Step 17/22 : RUN chown mysql:mysql /etc/mysql/my.cnf
 ---> Running in 6718151b6dc9
Removing intermediate container 6718151b6dc9
 ---> 21337dae9288
Step 18/22 : RUN chmod 660 /etc/mysql/my.cnf
 ---> Running in d21936deb426
Removing intermediate container d21936deb426
 ---> c714b82ad87e
Step 19/22 : ENV MYSQL_PASS "admin"
 ---> Running in a3dfdc850c11
Removing intermediate container a3dfdc850c11
 ---> e4bced8f13cd
Step 20/22 : COPY create_mysql_admin_user.sh /tmp/create_mysql_admin_user.sh
 ---> 7559f19e0360
Step 21/22 : RUN chmod +x /tmp/create_mysql_admin_user.sh
 ---> Running in ea827cc45703
Removing intermediate container ea827cc45703
 ---> 68614e30aeaa
Step 22/22 : CMD ["/tmp/run.sh"]
 ---> Running in 106455823ea1
Removing intermediate container 106455823ea1
 ---> 53b22697cf16
Successfully built 53b22697cf16
Successfully tagged matecat-playgrond_mysql:latest
WARNING: Image for service mysql was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Building matecat
Step 1/38 : FROM ostico/trusty-base:latest
 ---> 1400f28c31cd
Step 2/38 : ENV PHP_POST_MAX_SIZE 1024M
 ---> Running in 027c215e9ea4
Removing intermediate container 027c215e9ea4
 ---> 1ee46ede49b9
Step 3/38 : ENV PHP_UPLOAD_MAX_FILESIZE 1024M
 ---> Running in d04e33c60287
Removing intermediate container d04e33c60287
 ---> 7fdf7088164e
Step 4/38 : ENV PHP_MAX_MEMORY 4096M
 ---> Running in 1a6b3df7c094
Removing intermediate container 1a6b3df7c094
 ---> be94b27dbc1b
Step 5/38 : ENV SERVICES_DIR "/etc/init.d"
 ---> Running in c909099cb963
Removing intermediate container c909099cb963
 ---> c70275353f29
Step 6/38 : ENV USER_OWNER "www-data"
 ---> Running in 28a4cfd149ad
Removing intermediate container 28a4cfd149ad
 ---> 4b8e14ff0f38
Step 7/38 : ENV MATECAT_HOME "/var/www/matecat"
 ---> Running in 5215faeb910c
Removing intermediate container 5215faeb910c
 ---> 255296e9915e
Step 8/38 : COPY ./app_configs/config.ini /tmp/config.ini
 ---> 2ee81698ec6a
Step 9/38 : COPY ./app_configs/node_config.ini /tmp/node_config.ini
 ---> 1d710191d551
Step 10/38 : COPY ./app_configs/Error_Mail_List.ini /tmp/Error_Mail_List.ini
 ---> bdfb62bf4b1d
Step 11/38 : COPY ./app_configs/task_manager_config.ini /tmp/task_manager_config.ini
 ---> be81f1f2105d
Step 12/38 : COPY ./node-install.sh /tmp/node-install.sh
 ---> 3bcb9483c124
Step 13/38 : RUN chmod +x /tmp/node-install.sh
 ---> Running in 238f0b9b7b6c
Removing intermediate container 238f0b9b7b6c
 ---> 02c1cfe1b582
Step 14/38 : RUN /tmp/node-install.sh
 ---> Running in 80c39de0a54d
Need Root for installing NodeJS
Got Root!
Get Latest Version Number...
--2018-07-07 21:05:05--  https://nodejs.org/dist/latest/
Resolving nodejs.org (nodejs.org)... 104.20.23.46, 104.20.22.46, 2400:cb00:2048:1::6814:162e, ...
Connecting to nodejs.org (nodejs.org)|104.20.23.46|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: 'node-updater.html'

     0K ....                                                   35.1M=0s

2018-07-07 21:05:07 (35.1 MB/s) - 'node-updater.html' saved [4581]

Done
Downloading latest stable Version node-v10.6.0-linux-x64.tar.gz...
wget https://nodejs.org/dist/latest/node-v10.6.0-linux-x64.tar.gz -O /tmp/node-v10.6.0-linux-x64.tar.gz
--2018-07-07 21:05:07--  https://nodejs.org/dist/latest/node-v10.6.0-linux-x64.tar.gz
Resolving nodejs.org (nodejs.org)... 104.20.22.46, 104.20.23.46, 2400:cb00:2048:1::6814:172e, ...
Connecting to nodejs.org (nodejs.org)|104.20.22.46|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 18386873 (18M) [application/gzip]
Saving to: '/tmp/node-v10.6.0-linux-x64.tar.gz'

     0K .......... .......... .......... .......... ..........  0%  340K 53s
    50K .......... .......... .......... .......... ..........  0%  367K 51s
   100K .......... .......... .......... .......... ..........  0% 5.71M 35s
   150K .......... .......... .......... .......... ..........  1% 2.39M 28s
   200K .......... .......... .......... .......... ..........  1%  393K 31s
   250K .......... .......... .......... .......... ..........  1% 13.6M 26s
   300K .......... .......... .......... .......... ..........  1% 16.7M 22s
   350K .......... .......... .......... .......... ..........  2% 6.25M 20s
   400K .......... .......... .......... .......... ..........  2%  433K 22s
   450K .......... .......... .......... .......... ..........  2% 28.1M 20s
   500K .......... .......... .......... .......... ..........  3% 21.5M 18s
   550K .......... .......... .......... .......... ..........  3% 21.1M 17s
   600K .......... .......... .......... .......... ..........  3% 9.55M 15s
   650K .......... .......... .......... .......... ..........  3% 14.5M 14s
   700K .......... .......... .......... .......... ..........  4% 20.0M 13s
   750K .......... .......... .......... .......... ..........  4% 19.8M 13s
   800K .......... .......... .......... .......... ..........  4% 4.48M 12s
   850K .......... .......... .......... .......... ..........  5%  444K 13s
   900K .......... .......... .......... .......... ..........  5% 8.06M 13s
   950K .......... .......... .......... .......... ..........  5% 33.0M 12s
  1000K .......... .......... .......... .......... ..........  5% 29.6M 12s
  1050K .......... .......... .......... .......... ..........  6% 27.8M 11s
  1100K .......... .......... .......... .......... ..........  6% 29.9M 11s
  1150K .......... .......... .......... .......... ..........  6% 5.85M 10s
  1200K .......... .......... .......... .......... ..........  6% 32.2M 10s
  1250K .......... .......... .......... .......... ..........  7% 31.2M 9s
  1300K .......... .......... .......... .......... ..........  7% 31.1M 9s
  1350K .......... .......... .......... .......... ..........  7% 5.60M 9s
  1400K .......... .......... .......... .......... ..........  8% 1.31M 9s
  1450K .......... .......... .......... .......... ..........  8%  167M 9s
  1500K .......... .......... .......... .......... ..........  8% 1.55M 9s
  1550K .......... .......... .......... .......... ..........  8% 1.68M 9s
  1600K .......... .......... .......... .......... ..........  9% 2.99M 9s
  1650K .......... .......... .......... .......... ..........  9% 1.78M 8s
  1700K .......... .......... .......... .......... ..........  9% 7.27M 8s
  1750K .......... .......... .......... .......... .......... 10% 22.1M 8s
  1800K .......... .......... .......... .......... .......... 10% 15.1M 8s
  1850K .......... .......... .......... .......... .......... 10% 31.4M 8s
  1900K .......... .......... .......... .......... .......... 10% 3.90M 8s
  1950K .......... .......... .......... .......... .......... 11% 16.7M 7s
  2000K .......... .......... .......... .......... .......... 11% 24.4M 7s
  2050K .......... .......... .......... .......... .......... 11% 26.2M 7s
  2100K .......... .......... .......... .......... .......... 11% 7.82M 7s
  2150K .......... .......... .......... .......... .......... 12% 33.0M 7s
  2200K .......... .......... .......... .......... .......... 12% 39.4M 6s
  2250K .......... .......... .......... .......... .......... 12% 32.1M 6s
  2300K .......... .......... .......... .......... .......... 13% 30.9M 6s
  2350K .......... .......... .......... .......... .......... 13% 4.68M 6s
  2400K .......... .......... .......... .......... .......... 13% 1.53M 6s
  2450K .......... .......... .......... .......... .......... 13% 6.29M 6s
  2500K .......... .......... .......... .......... .......... 14% 2.07M 6s
  2550K .......... .......... .......... .......... .......... 14% 2.53M 6s
  2600K .......... .......... .......... .......... .......... 14% 2.31M 6s
  2650K .......... .......... .......... .......... .......... 15% 1.92M 6s
  2700K .......... .......... .......... .......... .......... 15% 1.90M 6s
  2750K .......... .......... .......... .......... .......... 15% 11.7M 6s
  2800K .......... .......... .......... .......... .......... 15% 22.2M 6s
  2850K .......... .......... .......... .......... .......... 16% 12.4M 6s
  2900K .......... .......... .......... .......... .......... 16% 18.1M 6s
  2950K .......... .......... .......... .......... .......... 16% 29.8M 6s
  3000K .......... .......... .......... .......... .......... 16% 11.9M 5s
  3050K .......... .......... .......... .......... .......... 17% 30.3M 5s
  3100K .......... .......... .......... .......... .......... 17% 9.38M 5s
  3150K .......... .......... .......... .......... .......... 17% 17.2M 5s
  3200K .......... .......... .......... .......... .......... 18% 26.8M 5s
  3250K .......... .......... .......... .......... .......... 18% 31.5M 5s
  3300K .......... .......... .......... .......... .......... 18% 5.45M 5s
  3350K .......... .......... .......... .......... .......... 18% 32.4M 5s
  3400K .......... .......... .......... .......... .......... 19% 31.8M 5s
  3450K .......... .......... .......... .......... .......... 19% 26.2M 5s
  3500K .......... .......... .......... .......... .......... 19% 23.3M 5s
  3550K .......... .......... .......... .......... .......... 20% 6.56M 5s
  3600K .......... .......... .......... .......... .......... 20% 31.3M 5s
  3650K .......... .......... .......... .......... .......... 20% 30.9M 4s
  3700K .......... .......... .......... .......... .......... 20% 33.0M 4s
  3750K .......... .......... .......... .......... .......... 21% 34.3M 4s
  3800K .......... .......... .......... .......... .......... 21% 31.0M 4s
  3850K .......... .......... .......... .......... .......... 21% 13.2M 4s
  3900K .......... .......... .......... .......... .......... 21% 33.7M 4s
  3950K .......... .......... .......... .......... .......... 22% 27.5M 4s
  4000K .......... .......... .......... .......... .......... 22% 10.3M 4s
  4050K .......... .......... .......... .......... .......... 22% 9.15M 4s
  4100K .......... .......... .......... .......... .......... 23% 25.3M 4s
  4150K .......... .......... .......... .......... .......... 23% 25.3M 4s
  4200K .......... .......... .......... .......... .......... 23% 37.7M 4s
  4250K .......... .......... .......... .......... .......... 23% 22.8M 4s
  4300K .......... .......... .......... .......... .......... 24% 6.34M 4s
  4350K .......... .......... .......... .......... .......... 24% 21.1M 4s
  4400K .......... .......... .......... .......... .......... 24% 31.3M 4s
  4450K .......... .......... .......... .......... .......... 25% 34.6M 4s
  4500K .......... .......... .......... .......... .......... 25% 5.79M 4s
  4550K .......... .......... .......... .......... .......... 25% 32.3M 4s
  4600K .......... .......... .......... .......... .......... 25% 33.7M 3s
  4650K .......... .......... .......... .......... .......... 26% 4.06M 3s
  4700K .......... .......... .......... .......... .......... 26%  905K 4s
  4750K .......... .......... .......... .......... .......... 26% 15.3M 4s
  4800K .......... .......... .......... .......... .......... 27% 16.3M 3s
  4850K .......... .......... .......... .......... .......... 27% 5.47M 3s
  4900K .......... .......... .......... .......... .......... 27% 27.5M 3s
  4950K .......... .......... .......... .......... .......... 27% 32.4M 3s
  5000K .......... .......... .......... .......... .......... 28% 35.1M 3s
  5050K .......... .......... .......... .......... .......... 28% 5.28M 3s
  5100K .......... .......... .......... .......... .......... 28% 29.5M 3s
  5150K .......... .......... .......... .......... .......... 28% 23.5M 3s
  5200K .......... .......... .......... .......... .......... 29% 23.8M 3s
  5250K .......... .......... .......... .......... .......... 29% 7.61M 3s
  5300K .......... .......... .......... .......... .......... 29% 21.9M 3s
  5350K .......... .......... .......... .......... .......... 30% 33.9M 3s
  5400K .......... .......... .......... .......... .......... 30% 26.4M 3s
  5450K .......... .......... .......... .......... .......... 30% 24.5M 3s
  5500K .......... .......... .......... .......... .......... 30% 6.71M 3s
  5550K .......... .......... .......... .......... .......... 31% 23.6M 3s
  5600K .......... .......... .......... .......... .......... 31% 30.0M 3s
  5650K .......... .......... .......... .......... .......... 31% 34.3M 3s
  5700K .......... .......... .......... .......... .......... 32% 34.8M 3s
  5750K .......... .......... .......... .......... .......... 32%  623K 3s
  5800K .......... .......... .......... .......... .......... 32% 18.9M 3s
  5850K .......... .......... .......... .......... .......... 32% 5.02M 3s
  5900K .......... .......... .......... .......... .......... 33% 32.4M 3s
  5950K .......... .......... .......... .......... .......... 33% 26.6M 3s
  6000K .......... .......... .......... .......... .......... 33% 28.6M 3s
  6050K .......... .......... .......... .......... .......... 33% 5.79M 3s
  6100K .......... .......... .......... .......... .......... 34% 37.8M 3s
  6150K .......... .......... .......... .......... .......... 34% 26.9M 3s
  6200K .......... .......... .......... .......... .......... 34% 32.9M 3s
  6250K .......... .......... .......... .......... .......... 35% 5.54M 3s
  6300K .......... .......... .......... .......... .......... 35% 35.6M 3s
  6350K .......... .......... .......... .......... .......... 35% 24.8M 3s
  6400K .......... .......... .......... .......... .......... 35% 41.3M 3s
  6450K .......... .......... .......... .......... .......... 36% 5.87M 3s
  6500K .......... .......... .......... .......... .......... 36% 24.9M 3s
  6550K .......... .......... .......... .......... .......... 36% 34.4M 3s
  6600K .......... .......... .......... .......... .......... 37% 30.3M 3s
  6650K .......... .......... .......... .......... .......... 37% 33.5M 2s
  6700K .......... .......... .......... .......... .......... 37% 36.3M 2s
  6750K .......... .......... .......... .......... .......... 37%  614K 3s
  6800K .......... .......... .......... .......... .......... 38% 4.87M 3s
  6850K .......... .......... .......... .......... .......... 38% 31.4M 3s
  6900K .......... .......... .......... .......... .......... 38% 31.0M 2s
  6950K .......... .......... .......... .......... .......... 38% 24.9M 2s
  7000K .......... .......... .......... .......... .......... 39% 32.5M 2s
  7050K .......... .......... .......... .......... .......... 39% 6.41M 2s
  7100K .......... .......... .......... .......... .......... 39% 29.6M 2s
  7150K .......... .......... .......... .......... .......... 40% 9.89M 2s
  7200K .......... .......... .......... .......... .......... 40%  183M 2s
  7250K .......... .......... .......... .......... .......... 40% 6.38M 2s
  7300K .......... .......... .......... .......... .......... 40% 33.7M 2s
  7350K .......... .......... .......... .......... .......... 41% 29.3M 2s
  7400K .......... .......... .......... .......... .......... 41% 30.2M 2s
  7450K .......... .......... .......... .......... .......... 41% 6.55M 2s
  7500K .......... .......... .......... .......... .......... 42% 35.1M 2s
  7550K .......... .......... .......... .......... .......... 42% 24.7M 2s
  7600K .......... .......... .......... .......... .......... 42% 33.5M 2s
  7650K .......... .......... .......... .......... .......... 42% 33.0M 2s
  7700K .......... .......... .......... .......... .......... 43% 32.3M 2s
  7750K .......... .......... .......... .......... .......... 43% 34.0M 2s
  7800K .......... .......... .......... .......... .......... 43%  547K 2s
  7850K .......... .......... .......... .......... .......... 43% 24.4M 2s
  7900K .......... .......... .......... .......... .......... 44% 17.8M 2s
  7950K .......... .......... .......... .......... .......... 44% 20.2M 2s
  8000K .......... .......... .......... .......... .......... 44% 11.6M 2s
  8050K .......... .......... .......... .......... .......... 45% 29.3M 2s
  8100K .......... .......... .......... .......... .......... 45% 26.1M 2s
  8150K .......... .......... .......... .......... .......... 45% 21.1M 2s
  8200K .......... .......... .......... .......... .......... 45% 31.2M 2s
  8250K .......... .......... .......... .......... .......... 46% 6.17M 2s
  8300K .......... .......... .......... .......... .......... 46% 30.5M 2s
  8350K .......... .......... .......... .......... .......... 46% 22.4M 2s
  8400K .......... .......... .......... .......... .......... 47% 28.3M 2s
  8450K .......... .......... .......... .......... .......... 47% 6.49M 2s
  8500K .......... .......... .......... .......... .......... 47% 23.2M 2s
  8550K .......... .......... .......... .......... .......... 47% 4.09M 2s
  8600K .......... .......... .......... .......... .......... 48% 26.0M 2s
  8650K .......... .......... .......... .......... .......... 48% 29.8M 2s
  8700K .......... .......... .......... .......... .......... 48% 30.4M 2s
  8750K .......... .......... .......... .......... .......... 49% 6.09M 2s
  8800K .......... .......... .......... .......... .......... 49%  737K 2s
  8850K .......... .......... .......... .......... .......... 49% 16.4M 2s
  8900K .......... .......... .......... .......... .......... 49% 16.2M 2s
  8950K .......... .......... .......... .......... .......... 50% 18.8M 2s
  9000K .......... .......... .......... .......... .......... 50% 5.29M 2s
  9050K .......... .......... .......... .......... .......... 50% 31.9M 2s
  9100K .......... .......... .......... .......... .......... 50% 27.1M 2s
  9150K .......... .......... .......... .......... .......... 51% 25.3M 2s
  9200K .......... .......... .......... .......... .......... 51% 5.34M 2s
  9250K .......... .......... .......... .......... .......... 51% 14.6M 2s
  9300K .......... .......... .......... .......... .......... 52% 14.8M 2s
  9350K .......... .......... .......... .......... .......... 52% 28.7M 2s
  9400K .......... .......... .......... .......... .......... 52% 25.2M 2s
  9450K .......... .......... .......... .......... .......... 52% 13.6M 2s
  9500K .......... .......... .......... .......... .......... 53% 31.8M 2s
  9550K .......... .......... .......... .......... .......... 53% 3.64M 2s
  9600K .......... .......... .......... .......... .......... 53% 33.1M 2s
  9650K .......... .......... .......... .......... .......... 54% 23.0M 2s
  9700K .......... .......... .......... .......... .......... 54% 31.7M 2s
  9750K .......... .......... .......... .......... .......... 54% 7.80M 2s
  9800K .......... .......... .......... .......... .......... 54% 16.1M 2s
  9850K .......... .......... .......... .......... .......... 55%  736K 2s
  9900K .......... .......... .......... .......... .......... 55% 16.4M 2s
  9950K .......... .......... .......... .......... .......... 55% 5.17M 2s
 10000K .......... .......... .......... .......... .......... 55% 28.9M 2s
 10050K .......... .......... .......... .......... .......... 56% 35.2M 2s
 10100K .......... .......... .......... .......... .......... 56% 35.5M 2s
 10150K .......... .......... .......... .......... .......... 56% 28.4M 2s
 10200K .......... .......... .......... .......... .......... 57% 5.37M 2s
 10250K .......... .......... .......... .......... .......... 57% 28.0M 2s
 10300K .......... .......... .......... .......... .......... 57% 31.9M 1s
 10350K .......... .......... .......... .......... .......... 57% 23.7M 1s
 10400K .......... .......... .......... .......... .......... 58% 5.87M 1s
 10450K .......... .......... .......... .......... .......... 58% 21.8M 1s
 10500K .......... .......... .......... .......... .......... 58% 4.51M 1s
 10550K .......... .......... .......... .......... .......... 59% 20.4M 1s
 10600K .......... .......... .......... .......... .......... 59% 24.5M 1s
 10650K .......... .......... .......... .......... .......... 59% 22.3M 1s
 10700K .......... .......... .......... .......... .......... 59% 32.1M 1s
 10750K .......... .......... .......... .......... .......... 60% 5.78M 1s
 10800K .......... .......... .......... .......... .......... 60% 25.9M 1s
 10850K .......... .......... .......... .......... .......... 60%  721K 1s
 10900K .......... .......... .......... .......... .......... 60% 16.5M 1s
 10950K .......... .......... .......... .......... .......... 61% 6.33M 1s
 11000K .......... .......... .......... .......... .......... 61% 32.2M 1s
 11050K .......... .......... .......... .......... .......... 61% 30.6M 1s
 11100K .......... .......... .......... .......... .......... 62% 24.8M 1s
 11150K .......... .......... .......... .......... .......... 62% 5.86M 1s
 11200K .......... .......... .......... .......... .......... 62% 31.3M 1s
 11250K .......... .......... .......... .......... .......... 62% 24.1M 1s
 11300K .......... .......... .......... .......... .......... 63% 17.0M 1s
 11350K .......... .......... .......... .......... .......... 63% 21.8M 1s
 11400K .......... .......... .......... .......... .......... 63% 8.02M 1s
 11450K .......... .......... .......... .......... .......... 64% 31.8M 1s
 11500K .......... .......... .......... .......... .......... 64% 29.0M 1s
 11550K .......... .......... .......... .......... .......... 64% 20.6M 1s
 11600K .......... .......... .......... .......... .......... 64% 29.8M 1s
 11650K .......... .......... .......... .......... .......... 65% 35.7M 1s
 11700K .......... .......... .......... .......... .......... 65% 11.3M 1s
 11750K .......... .......... .......... .......... .......... 65% 25.6M 1s
 11800K .......... .......... .......... .......... .......... 65% 26.5M 1s
 11850K .......... .......... .......... .......... .......... 66% 33.1M 1s
 11900K .......... .......... .......... .......... .......... 66%  600K 1s
 11950K .......... .......... .......... .......... .......... 66% 4.09M 1s
 12000K .......... .......... .......... .......... .......... 67% 28.4M 1s
 12050K .......... .......... .......... .......... .......... 67% 18.5M 1s
 12100K .......... .......... .......... .......... .......... 67% 29.2M 1s
 12150K .......... .......... .......... .......... .......... 67% 7.80M 1s
 12200K .......... .......... .......... .......... .......... 68% 28.8M 1s
 12250K .......... .......... .......... .......... .......... 68% 28.4M 1s
 12300K .......... .......... .......... .......... .......... 68% 25.5M 1s
 12350K .......... .......... .......... .......... .......... 69% 5.70M 1s
 12400K .......... .......... .......... .......... .......... 69% 22.3M 1s
 12450K .......... .......... .......... .......... .......... 69% 24.7M 1s
 12500K .......... .......... .......... .......... .......... 69% 4.76M 1s
 12550K .......... .......... .......... .......... .......... 70% 24.5M 1s
 12600K .......... .......... .......... .......... .......... 70% 30.3M 1s
 12650K .......... .......... .......... .......... .......... 70% 31.0M 1s
 12700K .......... .......... .......... .......... .......... 71% 5.92M 1s
 12750K .......... .......... .......... .......... .......... 71% 22.6M 1s
 12800K .......... .......... .......... .......... .......... 71% 30.4M 1s
 12850K .......... .......... .......... .......... .......... 71% 31.1M 1s
 12900K .......... .......... .......... .......... .......... 72%  641K 1s
 12950K .......... .......... .......... .......... .......... 72% 16.1M 1s
 13000K .......... .......... .......... .......... .......... 72% 16.3M 1s
 13050K .......... .......... .......... .......... .......... 72% 25.7M 1s
 13100K .......... .......... .......... .......... .......... 73% 34.9M 1s
 13150K .......... .......... .......... .......... .......... 73% 7.23M 1s
 13200K .......... .......... .......... .......... .......... 73% 25.4M 1s
 13250K .......... .......... .......... .......... .......... 74% 23.3M 1s
 13300K .......... .......... .......... .......... .......... 74% 29.2M 1s
 13350K .......... .......... .......... .......... .......... 74% 6.04M 1s
 13400K .......... .......... .......... .......... .......... 74% 14.1M 1s
 13450K .......... .......... .......... .......... .......... 75% 25.6M 1s
 13500K .......... .......... .......... .......... .......... 75% 5.00M 1s
 13550K .......... .......... .......... .......... .......... 75% 11.9M 1s
 13600K .......... .......... .......... .......... .......... 76% 29.8M 1s
 13650K .......... .......... .......... .......... .......... 76% 32.3M 1s
 13700K .......... .......... .......... .......... .......... 76% 6.91M 1s
 13750K .......... .......... .......... .......... .......... 76% 16.6M 1s
 13800K .......... .......... .......... .......... .......... 77% 55.4M 1s
 13850K .......... .......... .......... .......... .......... 77% 21.9M 1s
 13900K .......... .......... .......... .......... .......... 77% 2.36M 1s
 13950K .......... .......... .......... .......... .......... 77% 1.00M 1s
 14000K .......... .......... .......... .......... .......... 78% 18.1M 1s
 14050K .......... .......... .......... .......... .......... 78% 17.5M 1s
 14100K .......... .......... .......... .......... .......... 78% 3.57M 1s
 14150K .......... .......... .......... .......... .......... 79% 8.19M 1s
 14200K .......... .......... .......... .......... .......... 79% 19.7M 1s
 14250K .......... .......... .......... .......... .......... 79% 34.3M 1s
 14300K .......... .......... .......... .......... .......... 79% 31.1M 1s
 14350K .......... .......... .......... .......... .......... 80% 7.43M 1s
 14400K .......... .......... .......... .......... .......... 80% 23.3M 1s
 14450K .......... .......... .......... .......... .......... 80% 25.4M 1s
 14500K .......... .......... .......... .......... .......... 81% 29.1M 1s
 14550K .......... .......... .......... .......... .......... 81% 15.5M 1s
 14600K .......... .......... .......... .......... .......... 81% 30.0M 1s
 14650K .......... .......... .......... .......... .......... 81% 23.5M 1s
 14700K .......... .......... .......... .......... .......... 82% 1.19M 1s
 14750K .......... .......... .......... .......... .......... 82% 48.4M 1s
 14800K .......... .......... .......... .......... .......... 82%  141M 1s
 14850K .......... .......... .......... .......... .......... 82%  270M 1s
 14900K .......... .......... .......... .......... .......... 83% 1022K 1s
 14950K .......... .......... .......... .......... .......... 83% 17.7M 1s
 15000K .......... .......... .......... .......... .......... 83% 13.0M 1s
 15050K .......... .......... .......... .......... .......... 84% 24.1M 1s
 15100K .......... .......... .......... .......... .......... 84% 4.71M 1s
 15150K .......... .......... .......... .......... .......... 84% 21.0M 0s
 15200K .......... .......... .......... .......... .......... 84% 29.3M 0s
 15250K .......... .......... .......... .......... .......... 85% 26.9M 0s
 15300K .......... .......... .......... .......... .......... 85% 6.21M 0s
 15350K .......... .......... .......... .......... .......... 85% 22.1M 0s
 15400K .......... .......... .......... .......... .......... 86% 20.1M 0s
 15450K .......... .......... .......... .......... .......... 86% 4.48M 0s
 15500K .......... .......... .......... .......... .......... 86% 26.5M 0s
 15550K .......... .......... .......... .......... .......... 86% 20.6M 0s
 15600K .......... .......... .......... .......... .......... 87% 31.1M 0s
 15650K .......... .......... .......... .......... .......... 87% 6.36M 0s
 15700K .......... .......... .......... .......... .......... 87% 17.7M 0s
 15750K .......... .......... .......... .......... .......... 87% 25.5M 0s
 15800K .......... .......... .......... .......... .......... 88% 32.4M 0s
 15850K .......... .......... .......... .......... .......... 88% 32.5M 0s
 15900K .......... .......... .......... .......... .......... 88% 3.74M 0s
 15950K .......... .......... .......... .......... .......... 89%  779K 0s
 16000K .......... .......... .......... .......... .......... 89% 23.8M 0s
 16050K .......... .......... .......... .......... .......... 89% 16.6M 0s
 16100K .......... .......... .......... .......... .......... 89% 5.54M 0s
 16150K .......... .......... .......... .......... .......... 90% 28.8M 0s
 16200K .......... .......... .......... .......... .......... 90% 22.5M 0s
 16250K .......... .......... .......... .......... .......... 90% 16.2M 0s
 16300K .......... .......... .......... .......... .......... 91% 8.47M 0s
 16350K .......... .......... .......... .......... .......... 91% 20.6M 0s
 16400K .......... .......... .......... .......... .......... 91% 4.10M 0s
 16450K .......... .......... .......... .......... .......... 91% 15.5M 0s
 16500K .......... .......... .......... .......... .......... 92% 25.6M 0s
 16550K .......... .......... .......... .......... .......... 92% 28.0M 0s
 16600K .......... .......... .......... .......... .......... 92% 12.5M 0s
 16650K .......... .......... .......... .......... .......... 93% 8.23M 0s
 16700K .......... .......... .......... .......... .......... 93% 13.9M 0s
 16750K .......... .......... .......... .......... .......... 93% 16.5M 0s
 16800K .......... .......... .......... .......... .......... 93% 32.3M 0s
 16850K .......... .......... .......... .......... .......... 94% 12.5M 0s
 16900K .......... .......... .......... .......... .......... 94% 5.78M 0s
 16950K .......... .......... .......... .......... .......... 94%  820K 0s
 17000K .......... .......... .......... .......... .......... 94% 12.9M 0s
 17050K .......... .......... .......... .......... .......... 95% 34.2M 0s
 17100K .......... .......... .......... .......... .......... 95% 25.3M 0s
 17150K .......... .......... .......... .......... .......... 95% 17.7M 0s
 17200K .......... .......... .......... .......... .......... 96% 9.77M 0s
 17250K .......... .......... .......... .......... .......... 96% 16.0M 0s
 17300K .......... .......... .......... .......... .......... 96% 25.8M 0s
 17350K .......... .......... .......... .......... .......... 96% 32.5M 0s
 17400K .......... .......... .......... .......... .......... 97% 7.47M 0s
 17450K .......... .......... .......... .......... .......... 97% 24.3M 0s
 17500K .......... .......... .......... .......... .......... 97% 18.2M 0s
 17550K .......... .......... .......... .......... .......... 98% 8.38M 0s
 17600K .......... .......... .......... .......... .......... 98% 13.1M 0s
 17650K .......... .......... .......... .......... .......... 98% 29.6M 0s
 17700K .......... .......... .......... .......... .......... 98% 18.8M 0s
 17750K .......... .......... .......... .......... .......... 99% 20.4M 0s
 17800K .......... .......... .......... .......... .......... 99% 17.3M 0s
 17850K .......... .......... .......... .......... .......... 99% 11.2M 0s
 17900K .......... .......... .......... .......... .......... 99% 1.94M 0s
 17950K .....                                                 100% 14.8M=3.1s

2018-07-07 21:05:10 (5.72 MB/s) - '/tmp/node-v10.6.0-linux-x64.tar.gz' saved [18386873/18386873]

Done
Installing...
Finished installing!
Removing intermediate container 80c39de0a54d
 ---> 9957b5d6063e
Step 15/38 : RUN rm /tmp/node-install.sh
 ---> Running in 06b27976a01b
Removing intermediate container 06b27976a01b
 ---> 9ba276923f0b
Step 16/38 : COPY monitrc /etc/monit/monitrc
 ---> c84bfb9d07ec
Step 17/38 : RUN mkdir /var/log/apache2/matecat/
 ---> Running in 1787271de2ac
Removing intermediate container 1787271de2ac
 ---> 96a2489e3077
Step 18/38 : RUN rm -rf /etc/apache2/sites-available/default
 ---> Running in b90623962fff
Removing intermediate container b90623962fff
 ---> aba57a28df2b
Step 19/38 : RUN rm -rf /etc/apache2/sites-enabled/*
 ---> Running in 08fe9dc5f3a7
Removing intermediate container 08fe9dc5f3a7
 ---> 29e1b32d5c94
Step 20/38 : RUN userdel www-data
 ---> Running in 4ae4d146759f
Removing intermediate container 4ae4d146759f
 ---> 75d7247be533
Step 21/38 : RUN groupadd www-data
 ---> Running in ceec32abb225
Removing intermediate container ceec32abb225
 ---> e7b87bc17ec9
Step 22/38 : RUN useradd -ms /bin/bash -g www-data www-data
 ---> Running in ce2ef4fb464d
Removing intermediate container ce2ef4fb464d
 ---> 833f894107ba
Step 23/38 : RUN apt-get update
 ---> Running in 70f04d555ba6
Ign http://archive.ubuntu.com trusty InRelease
Get:1 http://archive.ubuntu.com trusty-updates InRelease [65.9 kB]
Get:2 http://archive.ubuntu.com trusty-security InRelease [65.9 kB]
Hit http://archive.ubuntu.com trusty Release.gpg
Hit http://archive.ubuntu.com trusty Release
Get:3 http://archive.ubuntu.com trusty-updates/main Sources [515 kB]
Get:4 http://archive.ubuntu.com trusty-updates/restricted Sources [6449 B]
Get:5 http://archive.ubuntu.com trusty-updates/universe Sources [254 kB]
Get:6 http://archive.ubuntu.com trusty-updates/main amd64 Packages [1353 kB]
Get:7 http://archive.ubuntu.com trusty-updates/restricted amd64 Packages [21.4 kB]
Get:8 http://archive.ubuntu.com trusty-updates/universe amd64 Packages [592 kB]
Get:9 http://archive.ubuntu.com trusty-security/main Sources [201 kB]
Get:10 http://archive.ubuntu.com trusty-security/restricted Sources [5050 B]
Get:11 http://archive.ubuntu.com trusty-security/universe Sources [89.7 kB]
Get:12 http://archive.ubuntu.com trusty-security/main amd64 Packages [929 kB]
Get:13 http://archive.ubuntu.com trusty-security/restricted amd64 Packages [18.1 kB]
Get:14 http://archive.ubuntu.com trusty-security/universe amd64 Packages [297 kB]
Hit http://archive.ubuntu.com trusty/main Sources
Hit http://archive.ubuntu.com trusty/restricted Sources
Hit http://archive.ubuntu.com trusty/universe Sources
Hit http://archive.ubuntu.com trusty/main amd64 Packages
Hit http://archive.ubuntu.com trusty/restricted amd64 Packages
Hit http://archive.ubuntu.com trusty/universe amd64 Packages
Fetched 4412 kB in 9s (467 kB/s)
Reading package lists...
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-updates_restricted_binary-amd64_Packages.gz is not what the server reported 21381 23467
W: Size of file /var/lib/apt/lists/archive.ubuntu.com_ubuntu_dists_trusty-security_restricted_binary-amd64_Packages.gz is not what the server reported 18072 20231
Removing intermediate container 70f04d555ba6
 ---> 6ab4830c3e99
Step 24/38 : RUN apt-get install -y apache2-prefork-dev php5-dev php5-mcrypt
 ---> Running in d4f1701fb4aa
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  autoconf automake autotools-dev binutils bsdmainutils build-essential
  comerr-dev cpp cpp-4.8 debhelper dh-apparmor dpkg-dev fakeroot g++ g++-4.8
  gcc gcc-4.8 gcc-4.8-base gettext gettext-base groff-base intltool-debian
  krb5-multidev libalgorithm-diff-perl libalgorithm-diff-xs-perl
  libalgorithm-merge-perl libapache2-mod-php5 libapr1-dev libaprutil1-dev
  libasan0 libasprintf-dev libasprintf0c2 libatomic1 libc-dev-bin libc6
  libc6-dev libcloog-isl4 libcroco3 libdpkg-perl libexpat1 libexpat1-dev
  libfakeroot libfile-fcntllock-perl libgcc-4.8-dev libgettextpo-dev
  libgettextpo0 libglib2.0-0 libglib2.0-data libgmp10 libgomp1
  libgssapi-krb5-2 libgssrpc4 libisl10 libitm1 libk5crypto3 libkadm5clnt-mit9
  libkadm5srv-mit9 libkdb5-7 libkrb5-3 libkrb5support0 libldap-2.4-2
  libldap2-dev libltdl-dev libltdl7 libmail-sendmail-perl libmcrypt4 libmpc3
  libmpfr4 libmysqlclient-dev libmysqlclient18 libpcre3-dev libpcrecpp0
  libpipeline1 libpq-dev libpq5 libquadmath0 libsctp-dev libsctp1 libsigsegv2
  libsqlite3-dev libssl-dev libssl-doc libssl1.0.0 libstdc++-4.8-dev
  libstdc++6 libsys-hostname-long-perl libtimedate-perl libtool libtsan0
  libunistring0 libuuid1 linux-libc-dev lksctp-tools m4 make man-db manpages
  manpages-dev mysql-common php-pear php5-cli php5-common php5-curl php5-mysql
  php5-readline pkg-php-tools po-debconf shared-mime-info shtool uuid-dev
  xz-utils zlib1g-dev
Suggested packages:
  autoconf2.13 autoconf-archive gnu-standards autoconf-doc binutils-doc
  wamerican wordlist vacation doc-base cpp-doc gcc-4.8-locales dh-make
  apparmor-easyprof debian-keyring g++-multilib g++-4.8-multilib gcc-4.8-doc
  libstdc++6-4.8-dbg gcc-multilib automake1.9 flex bison gdb gcc-doc
  gcc-4.8-multilib libgcc1-dbg libgomp1-dbg libitm1-dbg libatomic1-dbg
  libasan0-dbg libtsan0-dbg libquadmath0-dbg gettext-doc groff krb5-doc
  glibc-doc krb5-user libtool-doc libmcrypt-dev mcrypt postgresql-doc-9.3
  sqlite3-doc libstdc++-4.8-doc automaken gfortran fortran95-compiler gcj-jdk
  make-doc www-browser man-browser php5-user-cache libmail-box-perl
Recommended packages:
  uuid-runtime
The following NEW packages will be installed:
  apache2-dev autoconf automake autotools-dev binutils bsdmainutils
  build-essential comerr-dev cpp cpp-4.8 debhelper dh-apparmor dpkg-dev
  fakeroot g++ g++-4.8 gcc gcc-4.8 gettext gettext-base groff-base
  intltool-debian krb5-multidev libalgorithm-diff-perl
  libalgorithm-diff-xs-perl libalgorithm-merge-perl libapr1-dev
  libaprutil1-dev libasan0 libasprintf-dev libasprintf0c2 libatomic1
  libc-dev-bin libc6-dev libcloog-isl4 libcroco3 libdpkg-perl libexpat1-dev
  libfakeroot libfile-fcntllock-perl libgcc-4.8-dev libgettextpo-dev
  libgettextpo0 libglib2.0-0 libglib2.0-data libgmp10 libgomp1 libgssrpc4
  libisl10 libitm1 libkadm5clnt-mit9 libkadm5srv-mit9 libkdb5-7 libldap2-dev
  libltdl-dev libltdl7 libmail-sendmail-perl libmcrypt4 libmpc3 libmpfr4
  libmysqlclient-dev libpcre3-dev libpcrecpp0 libpipeline1 libpq-dev libpq5
  libquadmath0 libsctp-dev libsctp1 libsigsegv2 libsqlite3-dev libssl-dev
  libssl-doc libstdc++-4.8-dev libsys-hostname-long-perl libtimedate-perl
  libtool libtsan0 libunistring0 linux-libc-dev lksctp-tools m4 make man-db
  manpages manpages-dev php-pear php5-dev php5-mcrypt pkg-php-tools po-debconf
  shared-mime-info shtool uuid-dev xz-utils zlib1g-dev
The following packages will be upgraded:
  gcc-4.8-base libapache2-mod-php5 libc6 libexpat1 libgssapi-krb5-2
  libk5crypto3 libkrb5-3 libkrb5support0 libldap-2.4-2 libmysqlclient18
  libssl1.0.0 libstdc++6 libuuid1 mysql-common php5-cli php5-common php5-curl
  php5-mysql php5-readline
19 upgraded, 96 newly installed, 0 to remove and 108 not upgraded.
Need to get 66.6 MB of archives.
After this operation, 189 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu/ trusty-updates/main gcc-4.8-base amd64 4.8.4-2ubuntu1~14.04.4 [16.7 kB]
Get:2 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libstdc++6 amd64 4.8.4-2ubuntu1~14.04.4 [260 kB]
Get:3 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libc6 amd64 2.19-0ubuntu6.14 [4753 kB]
Get:4 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libuuid1 amd64 2.20.1-5.1ubuntu20.9 [10.8 kB]
Get:5 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libexpat1 amd64 2.1.0-4ubuntu1.4 [70.9 kB]
Get:6 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libssl1.0.0 amd64 1.0.1f-1ubuntu2.26 [829 kB]
Get:7 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libasprintf0c2 amd64 0.18.3.1-1ubuntu3 [6712 B]
Get:8 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libglib2.0-0 amd64 2.40.2-0ubuntu1 [1058 kB]
Get:9 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libk5crypto3 amd64 1.12+dfsg-2ubuntu5.3 [79.6 kB]
Get:10 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgssapi-krb5-2 amd64 1.12+dfsg-2ubuntu5.3 [114 kB]
Get:11 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libkrb5-3 amd64 1.12+dfsg-2ubuntu5.3 [262 kB]
Get:12 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libkrb5support0 amd64 1.12+dfsg-2ubuntu5.3 [30.7 kB]
Get:13 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libldap-2.4-2 amd64 2.4.31-1+nmu2ubuntu8.4 [153 kB]
Get:14 http://archive.ubuntu.com/ubuntu/ trusty/main libpipeline1 amd64 1.3.0-1 [24.0 kB]
Get:15 http://archive.ubuntu.com/ubuntu/ trusty/main groff-base amd64 1.22.2-5 [1053 kB]
Get:16 http://archive.ubuntu.com/ubuntu/ trusty/main bsdmainutils amd64 9.0.5ubuntu1 [203 kB]
Get:17 http://archive.ubuntu.com/ubuntu/ trusty-updates/main man-db amd64 2.6.7.1-1ubuntu1 [857 kB]
Get:18 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libasan0 amd64 4.8.4-2ubuntu1~14.04.4 [63.1 kB]
Get:19 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libatomic1 amd64 4.8.4-2ubuntu1~14.04.4 [8630 B]
Get:20 http://archive.ubuntu.com/ubuntu/ trusty/main libgmp10 amd64 2:5.1.3+dfsg-1ubuntu1 [218 kB]
Get:21 http://archive.ubuntu.com/ubuntu/ trusty/main libisl10 amd64 0.12.2-1 [419 kB]
Get:22 http://archive.ubuntu.com/ubuntu/ trusty/main libcloog-isl4 amd64 0.18.2-1 [57.5 kB]
Get:23 http://archive.ubuntu.com/ubuntu/ trusty/main libcroco3 amd64 0.6.8-2ubuntu1 [82.4 kB]
Get:24 http://archive.ubuntu.com/ubuntu/ trusty/main libunistring0 amd64 0.9.3-5ubuntu3 [271 kB]
Get:25 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgettextpo0 amd64 0.18.3.1-1ubuntu3 [108 kB]
Get:26 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgomp1 amd64 4.8.4-2ubuntu1~14.04.4 [23.1 kB]
Get:27 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgssrpc4 amd64 1.12+dfsg-2ubuntu5.3 [53.1 kB]
Get:28 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libitm1 amd64 4.8.4-2ubuntu1~14.04.4 [28.6 kB]
Get:29 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libkadm5clnt-mit9 amd64 1.12+dfsg-2ubuntu5.3 [36.1 kB]
Get:30 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libkdb5-7 amd64 1.12+dfsg-2ubuntu5.3 [36.2 kB]
Get:31 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libkadm5srv-mit9 amd64 1.12+dfsg-2ubuntu5.3 [50.3 kB]
Get:32 http://archive.ubuntu.com/ubuntu/ trusty/main libltdl7 amd64 2.4.2-1.7ubuntu1 [35.0 kB]
Get:33 http://archive.ubuntu.com/ubuntu/ trusty/main libmpfr4 amd64 3.1.2-1 [203 kB]
Get:34 http://archive.ubuntu.com/ubuntu/ trusty-updates/main mysql-common all 5.5.60-0ubuntu0.14.04.1 [12.7 kB]
Get:35 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libmysqlclient18 amd64 5.5.60-0ubuntu0.14.04.1 [597 kB]
Get:36 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libpcrecpp0 amd64 1:8.31-2ubuntu2.3 [14.5 kB]
Get:37 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libquadmath0 amd64 4.8.4-2ubuntu1~14.04.4 [126 kB]
Get:38 http://archive.ubuntu.com/ubuntu/ trusty/main libsctp1 amd64 1.0.15+dfsg-1 [9226 B]
Get:39 http://archive.ubuntu.com/ubuntu/ trusty/main libsigsegv2 amd64 2.10-2 [15.0 kB]
Get:40 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libtsan0 amd64 4.8.4-2ubuntu1~14.04.4 [94.8 kB]
Get:41 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-mysql amd64 5.5.9+dfsg-1ubuntu4.25 [62.9 kB]
Get:42 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-readline amd64 5.5.9+dfsg-1ubuntu4.25 [12.1 kB]
Get:43 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-cli amd64 5.5.9+dfsg-1ubuntu4.25 [2154 kB]
Get:44 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libapache2-mod-php5 amd64 5.5.9+dfsg-1ubuntu4.25 [2200 kB]
Get:45 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-curl amd64 5.5.9+dfsg-1ubuntu4.25 [27.2 kB]
Get:46 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-common amd64 5.5.9+dfsg-1ubuntu4.25 [454 kB]
Get:47 http://archive.ubuntu.com/ubuntu/ trusty/main libmpc3 amd64 1.0.1-1ubuntu1 [38.4 kB]
Get:48 http://archive.ubuntu.com/ubuntu/ trusty-updates/main gettext-base amd64 0.18.3.1-1ubuntu3 [48.8 kB]
Get:49 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libglib2.0-data all 2.40.2-0ubuntu1 [116 kB]
Get:50 http://archive.ubuntu.com/ubuntu/ trusty/main manpages all 3.54-1ubuntu1 [627 kB]
Get:51 http://archive.ubuntu.com/ubuntu/ trusty/main shared-mime-info amd64 1.2-0ubuntu3 [415 kB]
Get:52 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libc-dev-bin amd64 2.19-0ubuntu6.14 [69.0 kB]
Get:53 http://archive.ubuntu.com/ubuntu/ trusty-updates/main linux-libc-dev amd64 3.13.0-153.203 [772 kB]
Get:54 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libc6-dev amd64 2.19-0ubuntu6.14 [1913 kB]
Get:55 http://archive.ubuntu.com/ubuntu/ trusty-updates/main uuid-dev amd64 2.20.1-5.1ubuntu20.9 [23.7 kB]
Get:56 http://archive.ubuntu.com/ubuntu/ trusty/main libsctp-dev amd64 1.0.15+dfsg-1 [64.4 kB]
Get:57 http://archive.ubuntu.com/ubuntu/ trusty/main libapr1-dev amd64 1.5.0-1 [599 kB]
Get:58 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libldap2-dev amd64 2.4.31-1+nmu2ubuntu8.4 [260 kB]
Get:59 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libexpat1-dev amd64 2.1.0-4ubuntu1.4 [115 kB]
Get:60 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libpcre3-dev amd64 1:8.31-2ubuntu2.3 [237 kB]
Get:61 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libsqlite3-dev amd64 3.8.2-1ubuntu2.1 [439 kB]
Get:62 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libpq5 amd64 9.3.23-0ubuntu0.14.04 [78.6 kB]
Get:63 http://archive.ubuntu.com/ubuntu/ trusty/main zlib1g-dev amd64 1:1.2.8.dfsg-1ubuntu1 [183 kB]
Get:64 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libssl-dev amd64 1.0.1f-1ubuntu2.26 [1072 kB]
Get:65 http://archive.ubuntu.com/ubuntu/ trusty-updates/main comerr-dev amd64 2.1-1.42.9-3ubuntu1.3 [38.3 kB]
Get:66 http://archive.ubuntu.com/ubuntu/ trusty-updates/main krb5-multidev amd64 1.12+dfsg-2ubuntu5.3 [111 kB]
Get:67 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libpq-dev amd64 9.3.23-0ubuntu0.14.04 [140 kB]
Get:68 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libmysqlclient-dev amd64 5.5.60-0ubuntu0.14.04.1 [865 kB]
Get:69 http://archive.ubuntu.com/ubuntu/ trusty/main libaprutil1-dev amd64 1.5.3-1 [334 kB]
Get:70 http://archive.ubuntu.com/ubuntu/ trusty/main libtimedate-perl all 2.3000-1 [37.2 kB]
Get:71 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libdpkg-perl all 1.17.5ubuntu5.8 [179 kB]
Get:72 http://archive.ubuntu.com/ubuntu/ trusty/main xz-utils amd64 5.1.1alpha+20120614-2ubuntu2 [78.8 kB]
Get:73 http://archive.ubuntu.com/ubuntu/ trusty/main make amd64 3.81-8.2ubuntu3 [119 kB]
Get:74 http://archive.ubuntu.com/ubuntu/ trusty-updates/main binutils amd64 2.24-5ubuntu14.2 [2076 kB]
Get:75 http://archive.ubuntu.com/ubuntu/ trusty-updates/main dpkg-dev all 1.17.5ubuntu5.8 [726 kB]
Get:76 http://archive.ubuntu.com/ubuntu/ trusty-updates/main gettext amd64 0.18.3.1-1ubuntu3 [829 kB]
Get:77 http://archive.ubuntu.com/ubuntu/ trusty/main intltool-debian all 0.35.0+20060710.1 [31.6 kB]
Get:78 http://archive.ubuntu.com/ubuntu/ trusty/main po-debconf all 1.0.16+nmu2ubuntu1 [210 kB]
Get:79 http://archive.ubuntu.com/ubuntu/ trusty-updates/main dh-apparmor all 2.10.95-0ubuntu2.6~14.04.3 [11.6 kB]
Get:80 http://archive.ubuntu.com/ubuntu/ trusty/main debhelper all 9.20131227ubuntu1 [604 kB]
Get:81 http://archive.ubuntu.com/ubuntu/ trusty-updates/main apache2-dev amd64 2.4.7-1ubuntu4.20 [167 kB]
Get:82 http://archive.ubuntu.com/ubuntu/ trusty/main m4 amd64 1.4.17-2ubuntu1 [195 kB]
Get:83 http://archive.ubuntu.com/ubuntu/ trusty/main autoconf all 2.69-6 [322 kB]
Get:84 http://archive.ubuntu.com/ubuntu/ trusty/main autotools-dev all 20130810.1 [44.3 kB]
Get:85 http://archive.ubuntu.com/ubuntu/ trusty/main automake all 1:1.14.1-2ubuntu1 [510 kB]
Get:86 http://archive.ubuntu.com/ubuntu/ trusty-updates/main cpp-4.8 amd64 4.8.4-2ubuntu1~14.04.4 [4452 kB]
Get:87 http://archive.ubuntu.com/ubuntu/ trusty/main cpp amd64 4:4.8.2-1ubuntu6 [27.5 kB]
Get:88 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgcc-4.8-dev amd64 4.8.4-2ubuntu1~14.04.4 [1688 kB]
Get:89 http://archive.ubuntu.com/ubuntu/ trusty-updates/main gcc-4.8 amd64 4.8.4-2ubuntu1~14.04.4 [5040 kB]
Get:90 http://archive.ubuntu.com/ubuntu/ trusty/main gcc amd64 4:4.8.2-1ubuntu6 [5098 B]
Get:91 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libstdc++-4.8-dev amd64 4.8.4-2ubuntu1~14.04.4 [1051 kB]
Get:92 http://archive.ubuntu.com/ubuntu/ trusty-updates/main g++-4.8 amd64 4.8.4-2ubuntu1~14.04.4 [18.0 MB]
Get:93 http://archive.ubuntu.com/ubuntu/ trusty/main g++ amd64 4:4.8.2-1ubuntu6 [1490 B]
Get:94 http://archive.ubuntu.com/ubuntu/ trusty/main build-essential amd64 11.6ubuntu6 [4838 B]
Get:95 http://archive.ubuntu.com/ubuntu/ trusty/main libfakeroot amd64 1.20-3ubuntu2 [25.4 kB]
Get:96 http://archive.ubuntu.com/ubuntu/ trusty/main fakeroot amd64 1.20-3ubuntu2 [55.0 kB]
Get:97 http://archive.ubuntu.com/ubuntu/ trusty/main libalgorithm-diff-perl all 1.19.02-3 [50.0 kB]
Get:98 http://archive.ubuntu.com/ubuntu/ trusty/main libalgorithm-diff-xs-perl amd64 0.04-2build4 [12.6 kB]
Get:99 http://archive.ubuntu.com/ubuntu/ trusty/main libalgorithm-merge-perl all 0.08-2 [12.7 kB]
Get:100 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libasprintf-dev amd64 0.18.3.1-1ubuntu3 [4438 B]
Get:101 http://archive.ubuntu.com/ubuntu/ trusty/main libfile-fcntllock-perl amd64 0.14-2build1 [15.9 kB]
Get:102 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libgettextpo-dev amd64 0.18.3.1-1ubuntu3 [122 kB]
Get:103 http://archive.ubuntu.com/ubuntu/ trusty/main libltdl-dev amd64 2.4.2-1.7ubuntu1 [157 kB]
Get:104 http://archive.ubuntu.com/ubuntu/ trusty/main libsys-hostname-long-perl all 1.4-3 [11.3 kB]
Get:105 http://archive.ubuntu.com/ubuntu/ trusty/main libmail-sendmail-perl all 0.79.16-1 [26.5 kB]
Get:106 http://archive.ubuntu.com/ubuntu/ trusty/universe libmcrypt4 amd64 2.5.8-3.1ubuntu1 [61.9 kB]
Get:107 http://archive.ubuntu.com/ubuntu/ trusty-updates/main libssl-doc all 1.0.1f-1ubuntu2.26 [971 kB]
Get:108 http://archive.ubuntu.com/ubuntu/ trusty/main libtool amd64 2.4.2-1.7ubuntu1 [188 kB]
Get:109 http://archive.ubuntu.com/ubuntu/ trusty/main lksctp-tools amd64 1.0.15+dfsg-1 [51.3 kB]
Get:110 http://archive.ubuntu.com/ubuntu/ trusty/main manpages-dev all 3.54-1ubuntu1 [1820 kB]
Get:111 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php-pear all 5.5.9+dfsg-1ubuntu4.25 [267 kB]
Get:112 http://archive.ubuntu.com/ubuntu/ trusty/main shtool all 2.0.8-6 [149 kB]
Get:113 http://archive.ubuntu.com/ubuntu/ trusty-updates/main php5-dev amd64 5.5.9+dfsg-1ubuntu4.25 [357 kB]
Get:114 http://archive.ubuntu.com/ubuntu/ trusty/universe php5-mcrypt amd64 5.4.6-0ubuntu5 [15.4 kB]
Get:115 http://archive.ubuntu.com/ubuntu/ trusty/main pkg-php-tools all 1.11 [21.6 kB]
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
dpkg-preconfigure: unable to re-open stdin: 
Fetched 66.6 MB in 46s (1426 kB/s)
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../gcc-4.8-base_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking gcc-4.8-base:amd64 (4.8.4-2ubuntu1~14.04.4) over (4.8.4-2ubuntu1~14.04.1) ...
Setting up gcc-4.8-base:amd64 (4.8.4-2ubuntu1~14.04.4) ...
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../libstdc++6_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libstdc++6:amd64 (4.8.4-2ubuntu1~14.04.4) over (4.8.4-2ubuntu1~14.04.1) ...
Setting up libstdc++6:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../libc6_2.19-0ubuntu6.14_amd64.deb ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
Unpacking libc6:amd64 (2.19-0ubuntu6.14) over (2.19-0ubuntu6.7) ...
Setting up libc6:amd64 (2.19-0ubuntu6.14) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../libuuid1_2.20.1-5.1ubuntu20.9_amd64.deb ...
Unpacking libuuid1:amd64 (2.20.1-5.1ubuntu20.9) over (2.20.1-5.1ubuntu20.7) ...
Setting up libuuid1:amd64 (2.20.1-5.1ubuntu20.9) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
(Reading database ... 19820 files and directories currently installed.)
Preparing to unpack .../libexpat1_2.1.0-4ubuntu1.4_amd64.deb ...
Unpacking libexpat1:amd64 (2.1.0-4ubuntu1.4) over (2.1.0-4ubuntu1.1) ...
Preparing to unpack .../libssl1.0.0_1.0.1f-1ubuntu2.26_amd64.deb ...
Unpacking libssl1.0.0:amd64 (1.0.1f-1ubuntu2.26) over (1.0.1f-1ubuntu2.18) ...
Selecting previously unselected package libasprintf0c2:amd64.
Preparing to unpack .../libasprintf0c2_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking libasprintf0c2:amd64 (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package libglib2.0-0:amd64.
Preparing to unpack .../libglib2.0-0_2.40.2-0ubuntu1_amd64.deb ...
Unpacking libglib2.0-0:amd64 (2.40.2-0ubuntu1) ...
Preparing to unpack .../libk5crypto3_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libk5crypto3:amd64 (1.12+dfsg-2ubuntu5.3) over (1.12+dfsg-2ubuntu5.2) ...
Preparing to unpack .../libgssapi-krb5-2_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libgssapi-krb5-2:amd64 (1.12+dfsg-2ubuntu5.3) over (1.12+dfsg-2ubuntu5.2) ...
Preparing to unpack .../libkrb5-3_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libkrb5-3:amd64 (1.12+dfsg-2ubuntu5.3) over (1.12+dfsg-2ubuntu5.2) ...
Preparing to unpack .../libkrb5support0_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libkrb5support0:amd64 (1.12+dfsg-2ubuntu5.3) over (1.12+dfsg-2ubuntu5.2) ...
Preparing to unpack .../libldap-2.4-2_2.4.31-1+nmu2ubuntu8.4_amd64.deb ...
Unpacking libldap-2.4-2:amd64 (2.4.31-1+nmu2ubuntu8.4) over (2.4.31-1+nmu2ubuntu8.2) ...
Selecting previously unselected package libpipeline1:amd64.
Preparing to unpack .../libpipeline1_1.3.0-1_amd64.deb ...
Unpacking libpipeline1:amd64 (1.3.0-1) ...
Selecting previously unselected package groff-base.
Preparing to unpack .../groff-base_1.22.2-5_amd64.deb ...
Unpacking groff-base (1.22.2-5) ...
Selecting previously unselected package bsdmainutils.
Preparing to unpack .../bsdmainutils_9.0.5ubuntu1_amd64.deb ...
Unpacking bsdmainutils (9.0.5ubuntu1) ...
Selecting previously unselected package man-db.
Preparing to unpack .../man-db_2.6.7.1-1ubuntu1_amd64.deb ...
Unpacking man-db (2.6.7.1-1ubuntu1) ...
Selecting previously unselected package libasan0:amd64.
Preparing to unpack .../libasan0_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libasan0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package libatomic1:amd64.
Preparing to unpack .../libatomic1_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libatomic1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package libgmp10:amd64.
Preparing to unpack .../libgmp10_2%3a5.1.3+dfsg-1ubuntu1_amd64.deb ...
Unpacking libgmp10:amd64 (2:5.1.3+dfsg-1ubuntu1) ...
Selecting previously unselected package libisl10:amd64.
Preparing to unpack .../libisl10_0.12.2-1_amd64.deb ...
Unpacking libisl10:amd64 (0.12.2-1) ...
Selecting previously unselected package libcloog-isl4:amd64.
Preparing to unpack .../libcloog-isl4_0.18.2-1_amd64.deb ...
Unpacking libcloog-isl4:amd64 (0.18.2-1) ...
Selecting previously unselected package libcroco3:amd64.
Preparing to unpack .../libcroco3_0.6.8-2ubuntu1_amd64.deb ...
Unpacking libcroco3:amd64 (0.6.8-2ubuntu1) ...
Selecting previously unselected package libunistring0:amd64.
Preparing to unpack .../libunistring0_0.9.3-5ubuntu3_amd64.deb ...
Unpacking libunistring0:amd64 (0.9.3-5ubuntu3) ...
Selecting previously unselected package libgettextpo0:amd64.
Preparing to unpack .../libgettextpo0_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking libgettextpo0:amd64 (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package libgomp1:amd64.
Preparing to unpack .../libgomp1_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libgomp1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package libgssrpc4:amd64.
Preparing to unpack .../libgssrpc4_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libgssrpc4:amd64 (1.12+dfsg-2ubuntu5.3) ...
Selecting previously unselected package libitm1:amd64.
Preparing to unpack .../libitm1_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libitm1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package libkadm5clnt-mit9:amd64.
Preparing to unpack .../libkadm5clnt-mit9_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libkadm5clnt-mit9:amd64 (1.12+dfsg-2ubuntu5.3) ...
Selecting previously unselected package libkdb5-7:amd64.
Preparing to unpack .../libkdb5-7_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libkdb5-7:amd64 (1.12+dfsg-2ubuntu5.3) ...
Selecting previously unselected package libkadm5srv-mit9:amd64.
Preparing to unpack .../libkadm5srv-mit9_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking libkadm5srv-mit9:amd64 (1.12+dfsg-2ubuntu5.3) ...
Selecting previously unselected package libltdl7:amd64.
Preparing to unpack .../libltdl7_2.4.2-1.7ubuntu1_amd64.deb ...
Unpacking libltdl7:amd64 (2.4.2-1.7ubuntu1) ...
Selecting previously unselected package libmpfr4:amd64.
Preparing to unpack .../libmpfr4_3.1.2-1_amd64.deb ...
Unpacking libmpfr4:amd64 (3.1.2-1) ...
Preparing to unpack .../mysql-common_5.5.60-0ubuntu0.14.04.1_all.deb ...
Unpacking mysql-common (5.5.60-0ubuntu0.14.04.1) over (5.5.49-0ubuntu0.14.04.1) ...
Preparing to unpack .../libmysqlclient18_5.5.60-0ubuntu0.14.04.1_amd64.deb ...
Unpacking libmysqlclient18:amd64 (5.5.60-0ubuntu0.14.04.1) over (5.5.49-0ubuntu0.14.04.1) ...
Selecting previously unselected package libpcrecpp0:amd64.
Preparing to unpack .../libpcrecpp0_1%3a8.31-2ubuntu2.3_amd64.deb ...
Unpacking libpcrecpp0:amd64 (1:8.31-2ubuntu2.3) ...
Selecting previously unselected package libquadmath0:amd64.
Preparing to unpack .../libquadmath0_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libquadmath0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package libsctp1:amd64.
Preparing to unpack .../libsctp1_1.0.15+dfsg-1_amd64.deb ...
Unpacking libsctp1:amd64 (1.0.15+dfsg-1) ...
Selecting previously unselected package libsigsegv2:amd64.
Preparing to unpack .../libsigsegv2_2.10-2_amd64.deb ...
Unpacking libsigsegv2:amd64 (2.10-2) ...
Selecting previously unselected package libtsan0:amd64.
Preparing to unpack .../libtsan0_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libtsan0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Preparing to unpack .../php5-mysql_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-mysql (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Preparing to unpack .../php5-readline_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-readline (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Preparing to unpack .../php5-cli_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-cli (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Preparing to unpack .../libapache2-mod-php5_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking libapache2-mod-php5 (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Preparing to unpack .../php5-curl_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-curl (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Preparing to unpack .../php5-common_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-common (5.5.9+dfsg-1ubuntu4.25) over (5.5.9+dfsg-1ubuntu4.16) ...
Selecting previously unselected package libmpc3:amd64.
Preparing to unpack .../libmpc3_1.0.1-1ubuntu1_amd64.deb ...
Unpacking libmpc3:amd64 (1.0.1-1ubuntu1) ...
Selecting previously unselected package gettext-base.
Preparing to unpack .../gettext-base_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking gettext-base (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package libglib2.0-data.
Preparing to unpack .../libglib2.0-data_2.40.2-0ubuntu1_all.deb ...
Unpacking libglib2.0-data (2.40.2-0ubuntu1) ...
Selecting previously unselected package manpages.
Preparing to unpack .../manpages_3.54-1ubuntu1_all.deb ...
Unpacking manpages (3.54-1ubuntu1) ...
Selecting previously unselected package shared-mime-info.
Preparing to unpack .../shared-mime-info_1.2-0ubuntu3_amd64.deb ...
Unpacking shared-mime-info (1.2-0ubuntu3) ...
Selecting previously unselected package libc-dev-bin.
Preparing to unpack .../libc-dev-bin_2.19-0ubuntu6.14_amd64.deb ...
Unpacking libc-dev-bin (2.19-0ubuntu6.14) ...
Selecting previously unselected package linux-libc-dev:amd64.
Preparing to unpack .../linux-libc-dev_3.13.0-153.203_amd64.deb ...
Unpacking linux-libc-dev:amd64 (3.13.0-153.203) ...
Selecting previously unselected package libc6-dev:amd64.
Preparing to unpack .../libc6-dev_2.19-0ubuntu6.14_amd64.deb ...
Unpacking libc6-dev:amd64 (2.19-0ubuntu6.14) ...
Selecting previously unselected package uuid-dev.
Preparing to unpack .../uuid-dev_2.20.1-5.1ubuntu20.9_amd64.deb ...
Unpacking uuid-dev (2.20.1-5.1ubuntu20.9) ...
Selecting previously unselected package libsctp-dev.
Preparing to unpack .../libsctp-dev_1.0.15+dfsg-1_amd64.deb ...
Unpacking libsctp-dev (1.0.15+dfsg-1) ...
Selecting previously unselected package libapr1-dev.
Preparing to unpack .../libapr1-dev_1.5.0-1_amd64.deb ...
Unpacking libapr1-dev (1.5.0-1) ...
Selecting previously unselected package libldap2-dev:amd64.
Preparing to unpack .../libldap2-dev_2.4.31-1+nmu2ubuntu8.4_amd64.deb ...
Unpacking libldap2-dev:amd64 (2.4.31-1+nmu2ubuntu8.4) ...
Selecting previously unselected package libexpat1-dev:amd64.
Preparing to unpack .../libexpat1-dev_2.1.0-4ubuntu1.4_amd64.deb ...
Unpacking libexpat1-dev:amd64 (2.1.0-4ubuntu1.4) ...
Selecting previously unselected package libpcre3-dev:amd64.
Preparing to unpack .../libpcre3-dev_1%3a8.31-2ubuntu2.3_amd64.deb ...
Unpacking libpcre3-dev:amd64 (1:8.31-2ubuntu2.3) ...
Selecting previously unselected package libsqlite3-dev:amd64.
Preparing to unpack .../libsqlite3-dev_3.8.2-1ubuntu2.1_amd64.deb ...
Unpacking libsqlite3-dev:amd64 (3.8.2-1ubuntu2.1) ...
Selecting previously unselected package libpq5.
Preparing to unpack .../libpq5_9.3.23-0ubuntu0.14.04_amd64.deb ...
Unpacking libpq5 (9.3.23-0ubuntu0.14.04) ...
Selecting previously unselected package zlib1g-dev:amd64.
Preparing to unpack .../zlib1g-dev_1%3a1.2.8.dfsg-1ubuntu1_amd64.deb ...
Unpacking zlib1g-dev:amd64 (1:1.2.8.dfsg-1ubuntu1) ...
Selecting previously unselected package libssl-dev:amd64.
Preparing to unpack .../libssl-dev_1.0.1f-1ubuntu2.26_amd64.deb ...
Unpacking libssl-dev:amd64 (1.0.1f-1ubuntu2.26) ...
Selecting previously unselected package comerr-dev.
Preparing to unpack .../comerr-dev_2.1-1.42.9-3ubuntu1.3_amd64.deb ...
Unpacking comerr-dev (2.1-1.42.9-3ubuntu1.3) ...
Selecting previously unselected package krb5-multidev.
Preparing to unpack .../krb5-multidev_1.12+dfsg-2ubuntu5.3_amd64.deb ...
Unpacking krb5-multidev (1.12+dfsg-2ubuntu5.3) ...
Selecting previously unselected package libpq-dev.
Preparing to unpack .../libpq-dev_9.3.23-0ubuntu0.14.04_amd64.deb ...
Unpacking libpq-dev (9.3.23-0ubuntu0.14.04) ...
Selecting previously unselected package libmysqlclient-dev.
Preparing to unpack .../libmysqlclient-dev_5.5.60-0ubuntu0.14.04.1_amd64.deb ...
Unpacking libmysqlclient-dev (5.5.60-0ubuntu0.14.04.1) ...
Selecting previously unselected package libaprutil1-dev.
Preparing to unpack .../libaprutil1-dev_1.5.3-1_amd64.deb ...
Unpacking libaprutil1-dev (1.5.3-1) ...
Selecting previously unselected package libtimedate-perl.
Preparing to unpack .../libtimedate-perl_2.3000-1_all.deb ...
Unpacking libtimedate-perl (2.3000-1) ...
Selecting previously unselected package libdpkg-perl.
Preparing to unpack .../libdpkg-perl_1.17.5ubuntu5.8_all.deb ...
Unpacking libdpkg-perl (1.17.5ubuntu5.8) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../xz-utils_5.1.1alpha+20120614-2ubuntu2_amd64.deb ...
Unpacking xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
Selecting previously unselected package make.
Preparing to unpack .../make_3.81-8.2ubuntu3_amd64.deb ...
Unpacking make (3.81-8.2ubuntu3) ...
Selecting previously unselected package binutils.
Preparing to unpack .../binutils_2.24-5ubuntu14.2_amd64.deb ...
Unpacking binutils (2.24-5ubuntu14.2) ...
Selecting previously unselected package dpkg-dev.
Preparing to unpack .../dpkg-dev_1.17.5ubuntu5.8_all.deb ...
Unpacking dpkg-dev (1.17.5ubuntu5.8) ...
Selecting previously unselected package gettext.
Preparing to unpack .../gettext_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking gettext (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package intltool-debian.
Preparing to unpack .../intltool-debian_0.35.0+20060710.1_all.deb ...
Unpacking intltool-debian (0.35.0+20060710.1) ...
Selecting previously unselected package po-debconf.
Preparing to unpack .../po-debconf_1.0.16+nmu2ubuntu1_all.deb ...
Unpacking po-debconf (1.0.16+nmu2ubuntu1) ...
Selecting previously unselected package dh-apparmor.
Preparing to unpack .../dh-apparmor_2.10.95-0ubuntu2.6~14.04.3_all.deb ...
Unpacking dh-apparmor (2.10.95-0ubuntu2.6~14.04.3) ...
Selecting previously unselected package debhelper.
Preparing to unpack .../debhelper_9.20131227ubuntu1_all.deb ...
Unpacking debhelper (9.20131227ubuntu1) ...
Selecting previously unselected package apache2-dev.
Preparing to unpack .../apache2-dev_2.4.7-1ubuntu4.20_amd64.deb ...
Unpacking apache2-dev (2.4.7-1ubuntu4.20) ...
Selecting previously unselected package m4.
Preparing to unpack .../m4_1.4.17-2ubuntu1_amd64.deb ...
Unpacking m4 (1.4.17-2ubuntu1) ...
Selecting previously unselected package autoconf.
Preparing to unpack .../autoconf_2.69-6_all.deb ...
Unpacking autoconf (2.69-6) ...
Selecting previously unselected package autotools-dev.
Preparing to unpack .../autotools-dev_20130810.1_all.deb ...
Unpacking autotools-dev (20130810.1) ...
Selecting previously unselected package automake.
Preparing to unpack .../automake_1%3a1.14.1-2ubuntu1_all.deb ...
Unpacking automake (1:1.14.1-2ubuntu1) ...
Selecting previously unselected package cpp-4.8.
Preparing to unpack .../cpp-4.8_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking cpp-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package cpp.
Preparing to unpack .../cpp_4%3a4.8.2-1ubuntu6_amd64.deb ...
Unpacking cpp (4:4.8.2-1ubuntu6) ...
Selecting previously unselected package libgcc-4.8-dev:amd64.
Preparing to unpack .../libgcc-4.8-dev_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libgcc-4.8-dev:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package gcc-4.8.
Preparing to unpack .../gcc-4.8_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking gcc-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package gcc.
Preparing to unpack .../gcc_4%3a4.8.2-1ubuntu6_amd64.deb ...
Unpacking gcc (4:4.8.2-1ubuntu6) ...
Selecting previously unselected package libstdc++-4.8-dev:amd64.
Preparing to unpack .../libstdc++-4.8-dev_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking libstdc++-4.8-dev:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package g++-4.8.
Preparing to unpack .../g++-4.8_4.8.4-2ubuntu1~14.04.4_amd64.deb ...
Unpacking g++-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Selecting previously unselected package g++.
Preparing to unpack .../g++_4%3a4.8.2-1ubuntu6_amd64.deb ...
Unpacking g++ (4:4.8.2-1ubuntu6) ...
Selecting previously unselected package build-essential.
Preparing to unpack .../build-essential_11.6ubuntu6_amd64.deb ...
Unpacking build-essential (11.6ubuntu6) ...
Selecting previously unselected package libfakeroot:amd64.
Preparing to unpack .../libfakeroot_1.20-3ubuntu2_amd64.deb ...
Unpacking libfakeroot:amd64 (1.20-3ubuntu2) ...
Selecting previously unselected package fakeroot.
Preparing to unpack .../fakeroot_1.20-3ubuntu2_amd64.deb ...
Unpacking fakeroot (1.20-3ubuntu2) ...
Selecting previously unselected package libalgorithm-diff-perl.
Preparing to unpack .../libalgorithm-diff-perl_1.19.02-3_all.deb ...
Unpacking libalgorithm-diff-perl (1.19.02-3) ...
Selecting previously unselected package libalgorithm-diff-xs-perl.
Preparing to unpack .../libalgorithm-diff-xs-perl_0.04-2build4_amd64.deb ...
Unpacking libalgorithm-diff-xs-perl (0.04-2build4) ...
Selecting previously unselected package libalgorithm-merge-perl.
Preparing to unpack .../libalgorithm-merge-perl_0.08-2_all.deb ...
Unpacking libalgorithm-merge-perl (0.08-2) ...
Selecting previously unselected package libasprintf-dev:amd64.
Preparing to unpack .../libasprintf-dev_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking libasprintf-dev:amd64 (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package libfile-fcntllock-perl.
Preparing to unpack .../libfile-fcntllock-perl_0.14-2build1_amd64.deb ...
Unpacking libfile-fcntllock-perl (0.14-2build1) ...
Selecting previously unselected package libgettextpo-dev:amd64.
Preparing to unpack .../libgettextpo-dev_0.18.3.1-1ubuntu3_amd64.deb ...
Unpacking libgettextpo-dev:amd64 (0.18.3.1-1ubuntu3) ...
Selecting previously unselected package libltdl-dev:amd64.
Preparing to unpack .../libltdl-dev_2.4.2-1.7ubuntu1_amd64.deb ...
Unpacking libltdl-dev:amd64 (2.4.2-1.7ubuntu1) ...
Selecting previously unselected package libsys-hostname-long-perl.
Preparing to unpack .../libsys-hostname-long-perl_1.4-3_all.deb ...
Unpacking libsys-hostname-long-perl (1.4-3) ...
Selecting previously unselected package libmail-sendmail-perl.
Preparing to unpack .../libmail-sendmail-perl_0.79.16-1_all.deb ...
Unpacking libmail-sendmail-perl (0.79.16-1) ...
Selecting previously unselected package libmcrypt4.
Preparing to unpack .../libmcrypt4_2.5.8-3.1ubuntu1_amd64.deb ...
Unpacking libmcrypt4 (2.5.8-3.1ubuntu1) ...
Selecting previously unselected package libssl-doc.
Preparing to unpack .../libssl-doc_1.0.1f-1ubuntu2.26_all.deb ...
Unpacking libssl-doc (1.0.1f-1ubuntu2.26) ...
Selecting previously unselected package libtool.
Preparing to unpack .../libtool_2.4.2-1.7ubuntu1_amd64.deb ...
Unpacking libtool (2.4.2-1.7ubuntu1) ...
Selecting previously unselected package lksctp-tools.
Preparing to unpack .../lksctp-tools_1.0.15+dfsg-1_amd64.deb ...
Unpacking lksctp-tools (1.0.15+dfsg-1) ...
Selecting previously unselected package manpages-dev.
Preparing to unpack .../manpages-dev_3.54-1ubuntu1_all.deb ...
Unpacking manpages-dev (3.54-1ubuntu1) ...
Selecting previously unselected package php-pear.
Preparing to unpack .../php-pear_5.5.9+dfsg-1ubuntu4.25_all.deb ...
Unpacking php-pear (5.5.9+dfsg-1ubuntu4.25) ...
Selecting previously unselected package shtool.
Preparing to unpack .../shtool_2.0.8-6_all.deb ...
Unpacking shtool (2.0.8-6) ...
Selecting previously unselected package php5-dev.
Preparing to unpack .../php5-dev_5.5.9+dfsg-1ubuntu4.25_amd64.deb ...
Unpacking php5-dev (5.5.9+dfsg-1ubuntu4.25) ...
Selecting previously unselected package php5-mcrypt.
Preparing to unpack .../php5-mcrypt_5.4.6-0ubuntu5_amd64.deb ...
Unpacking php5-mcrypt (5.4.6-0ubuntu5) ...
Selecting previously unselected package pkg-php-tools.
Preparing to unpack .../pkg-php-tools_1.11_all.deb ...
Unpacking pkg-php-tools (1.11) ...
Processing triggers for mime-support (3.54ubuntu1.1) ...
Setting up libexpat1:amd64 (2.1.0-4ubuntu1.4) ...
Setting up libssl1.0.0:amd64 (1.0.1f-1ubuntu2.26) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
Setting up libasprintf0c2:amd64 (0.18.3.1-1ubuntu3) ...
Setting up libglib2.0-0:amd64 (2.40.2-0ubuntu1) ...
No schema files found: doing nothing.
Setting up libkrb5support0:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libk5crypto3:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libkrb5-3:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libgssapi-krb5-2:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libldap-2.4-2:amd64 (2.4.31-1+nmu2ubuntu8.4) ...
Setting up libpipeline1:amd64 (1.3.0-1) ...
Setting up groff-base (1.22.2-5) ...
Setting up bsdmainutils (9.0.5ubuntu1) ...
update-alternatives: using /usr/bin/bsd-write to provide /usr/bin/write (write) in auto mode
update-alternatives: using /usr/bin/bsd-from to provide /usr/bin/from (from) in auto mode
Setting up man-db (2.6.7.1-1ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
Building database of manual pages ...
Setting up libasan0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up libatomic1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up libgmp10:amd64 (2:5.1.3+dfsg-1ubuntu1) ...
Setting up libisl10:amd64 (0.12.2-1) ...
Setting up libcloog-isl4:amd64 (0.18.2-1) ...
Setting up libcroco3:amd64 (0.6.8-2ubuntu1) ...
Setting up libunistring0:amd64 (0.9.3-5ubuntu3) ...
Setting up libgettextpo0:amd64 (0.18.3.1-1ubuntu3) ...
Setting up libgomp1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up libgssrpc4:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libitm1:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up libkadm5clnt-mit9:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libkdb5-7:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libkadm5srv-mit9:amd64 (1.12+dfsg-2ubuntu5.3) ...
Setting up libltdl7:amd64 (2.4.2-1.7ubuntu1) ...
Setting up libmpfr4:amd64 (3.1.2-1) ...
Setting up mysql-common (5.5.60-0ubuntu0.14.04.1) ...
Setting up libmysqlclient18:amd64 (5.5.60-0ubuntu0.14.04.1) ...
Setting up libpcrecpp0:amd64 (1:8.31-2ubuntu2.3) ...
Setting up libquadmath0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up libsctp1:amd64 (1.0.15+dfsg-1) ...
Setting up libsigsegv2:amd64 (2.10-2) ...
Setting up libtsan0:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up php5-common (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke pdo: already enabled for apache2 SAPI
php5_invoke pdo: already enabled for cli SAPI
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke opcache: already enabled for apache2 SAPI
php5_invoke opcache: already enabled for cli SAPI
Setting up php5-mysql (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke mysql: already enabled for apache2 SAPI
php5_invoke mysql: already enabled for cli SAPI
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke mysqli: already enabled for apache2 SAPI
php5_invoke mysqli: already enabled for cli SAPI
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke pdo_mysql: already enabled for apache2 SAPI
php5_invoke pdo_mysql: already enabled for cli SAPI
Setting up php5-cli (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke mysqli: already enabled for cli SAPI
php5_invoke mysql: already enabled for cli SAPI
php5_invoke pdo_mysql: already enabled for cli SAPI
php5_invoke pdo: already enabled for cli SAPI
php5_invoke opcache: already enabled for cli SAPI
php5_invoke readline: already enabled for cli SAPI
php5_invoke xdebug: already enabled for cli SAPI
php5_invoke curl: already enabled for cli SAPI
php5_invoke json: already enabled for cli SAPI
Setting up php5-readline (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke readline: already enabled for apache2 SAPI
php5_invoke readline: already enabled for cli SAPI
Setting up libapache2-mod-php5 (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke mysqli: already enabled for apache2 SAPI
php5_invoke mysql: already enabled for apache2 SAPI
php5_invoke pdo_mysql: already enabled for apache2 SAPI
php5_invoke pdo: already enabled for apache2 SAPI
php5_invoke opcache: already enabled for apache2 SAPI
php5_invoke readline: already enabled for apache2 SAPI
php5_invoke xdebug: already enabled for apache2 SAPI
php5_invoke curl: already enabled for apache2 SAPI
php5_invoke json: already enabled for apache2 SAPI
apache2_invoke php5: already enabled
invoke-rc.d: policy-rc.d denied execution of restart.
Setting up php5-curl (5.5.9+dfsg-1ubuntu4.25) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
php5_invoke curl: already enabled for apache2 SAPI
php5_invoke curl: already enabled for cli SAPI
Setting up libmpc3:amd64 (1.0.1-1ubuntu1) ...
Setting up gettext-base (0.18.3.1-1ubuntu3) ...
Setting up libglib2.0-data (2.40.2-0ubuntu1) ...
Setting up manpages (3.54-1ubuntu1) ...
Setting up shared-mime-info (1.2-0ubuntu3) ...
Setting up libc-dev-bin (2.19-0ubuntu6.14) ...
Setting up linux-libc-dev:amd64 (3.13.0-153.203) ...
Setting up libc6-dev:amd64 (2.19-0ubuntu6.14) ...
Setting up uuid-dev (2.20.1-5.1ubuntu20.9) ...
Setting up libsctp-dev (1.0.15+dfsg-1) ...
Setting up libapr1-dev (1.5.0-1) ...
Setting up libldap2-dev:amd64 (2.4.31-1+nmu2ubuntu8.4) ...
Setting up libexpat1-dev:amd64 (2.1.0-4ubuntu1.4) ...
Setting up libpcre3-dev:amd64 (1:8.31-2ubuntu2.3) ...
Setting up libsqlite3-dev:amd64 (3.8.2-1ubuntu2.1) ...
Setting up libpq5 (9.3.23-0ubuntu0.14.04) ...
Setting up zlib1g-dev:amd64 (1:1.2.8.dfsg-1ubuntu1) ...
Setting up libssl-dev:amd64 (1.0.1f-1ubuntu2.26) ...
Setting up comerr-dev (2.1-1.42.9-3ubuntu1.3) ...
Setting up krb5-multidev (1.12+dfsg-2ubuntu5.3) ...
Setting up libpq-dev (9.3.23-0ubuntu0.14.04) ...
Setting up libmysqlclient-dev (5.5.60-0ubuntu0.14.04.1) ...
Setting up libaprutil1-dev (1.5.3-1) ...
Setting up libtimedate-perl (2.3000-1) ...
Setting up libdpkg-perl (1.17.5ubuntu5.8) ...
Setting up xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
Setting up make (3.81-8.2ubuntu3) ...
Setting up binutils (2.24-5ubuntu14.2) ...
Setting up dpkg-dev (1.17.5ubuntu5.8) ...
Setting up gettext (0.18.3.1-1ubuntu3) ...
Setting up intltool-debian (0.35.0+20060710.1) ...
Setting up po-debconf (1.0.16+nmu2ubuntu1) ...
Setting up dh-apparmor (2.10.95-0ubuntu2.6~14.04.3) ...
Setting up debhelper (9.20131227ubuntu1) ...
Setting up apache2-dev (2.4.7-1ubuntu4.20) ...
Setting up m4 (1.4.17-2ubuntu1) ...
Setting up autoconf (2.69-6) ...
Setting up autotools-dev (20130810.1) ...
Setting up automake (1:1.14.1-2ubuntu1) ...
update-alternatives: using /usr/bin/automake-1.14 to provide /usr/bin/automake (automake) in auto mode
Setting up cpp-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Setting up cpp (4:4.8.2-1ubuntu6) ...
Setting up libgcc-4.8-dev:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up gcc-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Setting up gcc (4:4.8.2-1ubuntu6) ...
Setting up libstdc++-4.8-dev:amd64 (4.8.4-2ubuntu1~14.04.4) ...
Setting up g++-4.8 (4.8.4-2ubuntu1~14.04.4) ...
Setting up g++ (4:4.8.2-1ubuntu6) ...
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
Setting up build-essential (11.6ubuntu6) ...
Setting up libfakeroot:amd64 (1.20-3ubuntu2) ...
Setting up fakeroot (1.20-3ubuntu2) ...
update-alternatives: using /usr/bin/fakeroot-sysv to provide /usr/bin/fakeroot (fakeroot) in auto mode
Setting up libalgorithm-diff-perl (1.19.02-3) ...
Setting up libalgorithm-diff-xs-perl (0.04-2build4) ...
Setting up libalgorithm-merge-perl (0.08-2) ...
Setting up libasprintf-dev:amd64 (0.18.3.1-1ubuntu3) ...
Setting up libfile-fcntllock-perl (0.14-2build1) ...
Setting up libgettextpo-dev:amd64 (0.18.3.1-1ubuntu3) ...
Setting up libltdl-dev:amd64 (2.4.2-1.7ubuntu1) ...
Setting up libsys-hostname-long-perl (1.4-3) ...
Setting up libmail-sendmail-perl (0.79.16-1) ...
Setting up libmcrypt4 (2.5.8-3.1ubuntu1) ...
Setting up libssl-doc (1.0.1f-1ubuntu2.26) ...
Setting up libtool (2.4.2-1.7ubuntu1) ...
Setting up lksctp-tools (1.0.15+dfsg-1) ...
Setting up manpages-dev (3.54-1ubuntu1) ...
Setting up php-pear (5.5.9+dfsg-1ubuntu4.25) ...
Setting up shtool (2.0.8-6) ...
Setting up php5-dev (5.5.9+dfsg-1ubuntu4.25) ...
update-alternatives: using /usr/bin/php-config5 to provide /usr/bin/php-config (php-config) in auto mode
update-alternatives: using /usr/bin/phpize5 to provide /usr/bin/phpize (phpize) in auto mode
Setting up php5-mcrypt (5.4.6-0ubuntu5) ...
Setting up pkg-php-tools (1.11) ...
Processing triggers for libc-bin (2.19-0ubuntu6.7) ...
Processing triggers for libapache2-mod-php5 (5.5.9+dfsg-1ubuntu4.25) ...
Removing intermediate container d4f1701fb4aa
 ---> da75c82b3eb1
Step 25/38 : RUN git clone https://github.com/etsy/mod_realdoc.git
 ---> Running in 7dce7c798d04
Cloning into 'mod_realdoc'...
Removing intermediate container 7dce7c798d04
 ---> b4ccd83679a2
Step 26/38 : WORKDIR "/mod_realdoc"
Removing intermediate container e43593821eb3
 ---> e7fbaec8eb68
Step 27/38 : RUN apxs2 -i -a -c mod_realdoc.c
 ---> Running in 58a80d090213
/usr/share/apr-1.0/build/libtool --silent --mode=compile --tag=disable-static x86_64-linux-gnu-gcc -std=gnu99 -prefer-pic -pipe -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security  -D_FORTIFY_SOURCE=2   -DLINUX -D_REENTRANT -D_GNU_SOURCE  -pthread  -I/usr/include/apache2  -I/usr/include/apr-1.0   -I/usr/include/apr-1.0 -I/usr/include  -c -o mod_realdoc.lo mod_realdoc.c && touch mod_realdoc.slo
/usr/share/apr-1.0/build/libtool --silent --mode=link --tag=disable-static x86_64-linux-gnu-gcc -std=gnu99 -Wl,--as-needed -Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-z,now    -o mod_realdoc.la  -rpath /usr/lib/apache2/modules -module -avoid-version    mod_realdoc.lo
/usr/share/apache2/build/instdso.sh SH_LIBTOOL='/usr/share/apr-1.0/build/libtool' mod_realdoc.la /usr/lib/apache2/modules
/usr/share/apr-1.0/build/libtool --mode=install install mod_realdoc.la /usr/lib/apache2/modules/
libtool: install: install .libs/mod_realdoc.so /usr/lib/apache2/modules/mod_realdoc.so
libtool: install: install .libs/mod_realdoc.lai /usr/lib/apache2/modules/mod_realdoc.la
libtool: finish: PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/sbin" ldconfig -n /usr/lib/apache2/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/lib/apache2/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------
chmod 644 /usr/lib/apache2/modules/mod_realdoc.so
[preparing module `realdoc' in /etc/apache2/mods-available/realdoc.load]
Enabling module realdoc.
To activate the new configuration, you need to run:
  service apache2 restart
Removing intermediate container 58a80d090213
 ---> 092a262b521a
Step 28/38 : WORKDIR "/"
Removing intermediate container d7e767b78ffe
 ---> 881abb778533
Step 29/38 : RUN rm -rf ./mod_realdoc
 ---> Running in 1bba51215721
Removing intermediate container 1bba51215721
 ---> 2d04820cbed2
Step 30/38 : COPY 000-matecat.conf /etc/apache2/sites-enabled/000-matecat.conf
 ---> 14c6cc9bf7f7
Step 31/38 : RUN a2enmod rewrite filter deflate headers expires proxy_http
 ---> Running in 9495c031e769
Enabling module rewrite.
Module filter already enabled
Considering dependency filter for deflate:
Module filter already enabled
Module deflate already enabled
Enabling module headers.
Enabling module expires.
Considering dependency proxy for proxy_http:
Enabling module proxy.
Enabling module proxy_http.
To activate the new configuration, you need to run:
  service apache2 restart
Removing intermediate container 9495c031e769
 ---> fa9a72c2a0ba
Step 32/38 : RUN php5enmod mcrypt
 ---> Running in 0f6b51157b54
Removing intermediate container 0f6b51157b54
 ---> 7893f05a04b0
Step 33/38 : COPY environment_setup.sh /tmp/environment_setup.sh
 ---> 1be9c96c9c68
Step 34/38 : RUN chmod +x /tmp/environment_setup.sh
 ---> Running in 39f258f56734
Removing intermediate container 39f258f56734
 ---> 713108f6ba1a
Step 35/38 : COPY run.sh /tmp/run.sh
 ---> 8cdf44cd9e44
Step 36/38 : RUN chmod +x /tmp/run.sh
 ---> Running in 9f0b516965e6
Removing intermediate container 9f0b516965e6
 ---> f51ce030a1ff
Step 37/38 : WORKDIR "/var/www/matecat"
Removing intermediate container a54aa0b4dcd8
 ---> 7aadcf6f4458
Step 38/38 : CMD ["/tmp/run.sh"]
 ---> Running in 95c59d5f396e
Removing intermediate container 95c59d5f396e
 ---> 634e902511a1
Successfully built 634e902511a1
Successfully tagged matecat-playgrond_matecat:latest
WARNING: Image for service matecat was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating docker_amq                ... done
Creating docker_mysql              ... done
Creating docker_matecat_filter     ... done
Creating matecat-playgrond_redis_1 ... done
Creating docker_matecat            ... done
Attaching to docker_amq, docker_mysql, docker_matecat_filter, matecat-playgrond_redis_1, docker_matecat
docker_amq | Configuring ActiveMq\n
docker_amq | INFO: Loading '/opt/apache-activemq-5.13.2//bin/env'
docker_amq | INFO: Using java '/usr/bin/java'
docker_amq | Java Runtime: Oracle Corporation 1.8.0_171 /usr/lib/jvm/java-8-oracle/jre
docker_amq |   Heap sizes: current=62976k  free=61992k  max=932352k
docker_amq |     JVM args: -Xms64M -Xmx1G -Djava.util.logging.config.file=logging.properties -Djava.security.auth.login.config=/opt/apache-activemq-5.13.2//conf/login.config -Dactivemq.classpath=/opt/apache-activemq-5.13.2//conf:/opt/apache-activemq-5.13.2//../lib/: -Dactivemq.home=/opt/apache-activemq-5.13.2/ -Dactivemq.base=/opt/apache-activemq-5.13.2/ -Dactivemq.conf=/opt/apache-activemq-5.13.2//conf -Dactivemq.data=/opt/apache-activemq-5.13.2//data
docker_amq | Extensions classpath:
docker_amq |   [/opt/apache-activemq-5.13.2/lib,/opt/apache-activemq-5.13.2/lib/camel,/opt/apache-activemq-5.13.2/lib/optional,/opt/apache-activemq-5.13.2/lib/web,/opt/apache-activemq-5.13.2/lib/extra]
docker_amq | ACTIVEMQ_HOME: /opt/apache-activemq-5.13.2
docker_amq | ACTIVEMQ_BASE: /opt/apache-activemq-5.13.2
docker_amq | ACTIVEMQ_CONF: /opt/apache-activemq-5.13.2/conf
docker_amq | ACTIVEMQ_DATA: /opt/apache-activemq-5.13.2/data
docker_amq | Running create broker task...
docker_amq | Creating directory: /etc/default/activemq
docker_amq | Creating directory: /etc/default/activemq/bin
docker_amq | Creating directory: /etc/default/activemq/conf
docker_amq | Creating new file: /etc/default/activemq/bin/activemq.bat
docker_amq | Creating new file: /etc/default/activemq/bin/activemq
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/activemq.xml
docker_amq |           to: /etc/default/activemq/conf/activemq.xml
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/users.properties
docker_amq |           to: /etc/default/activemq/conf/users.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/client.ts
docker_amq |           to: /etc/default/activemq/conf/client.ts
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/jmx.password
docker_amq |           to: /etc/default/activemq/conf/jmx.password
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/jetty-realm.properties
docker_amq |           to: /etc/default/activemq/conf/jetty-realm.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/broker-localhost.cert
docker_amq |           to: /etc/default/activemq/conf/broker-localhost.cert
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/credentials.properties
docker_amq |           to: /etc/default/activemq/conf/credentials.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/broker.ks
docker_mysql | 2018-07-07T21:09:12.228439Z 0 [ERROR] --initialize specified but the data directory has files in it. Aborting.
docker_mysql | 2018-07-07T21:09:12.228493Z 0 [ERROR] Aborting
docker_mysql | 
docker_mysql | /var/lib/mysql /tmp
docker_mysql | /tmp
docker_mysql | Executing: mysqld_safe --defaults-file=/etc/mysql/my.cnf --user=mysql --plugin-dir=/usr/lib/mysql/plugin
docker_mysql | => Waiting for confirmation of MySQL service startup
docker_mysql | 2018-07-07T21:09:12.642568Z mysqld_safe Logging to '/var/log/mysql/error.log'.
docker_amq |           to: /etc/default/activemq/conf/broker.ks
docker_mysql | 2018-07-07T21:09:12.659163Z mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/jetty.xml
docker_amq |           to: /etc/default/activemq/conf/jetty.xml
docker_mysql | ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/broker.ts
docker_amq |           to: /etc/default/activemq/conf/broker.ts
docker_mysql | => Waiting for confirmation of MySQL service startup
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/client.ks
docker_amq |           to: /etc/default/activemq/conf/client.ks
docker_mysql | ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)
docker_mysql | => Waiting for confirmation of MySQL service startup
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/logging.properties
docker_amq |           to: /etc/default/activemq/conf/logging.properties
docker_mysql | --------------
docker_mysql | mysql  Ver 14.14 Distrib 5.7.22, for Linux (x86_64) using  EditLine wrapper
docker_mysql | 
docker_mysql | Connection id:		2
docker_mysql | Current database:	
docker_mysql | Current user:		root@localhost
docker_mysql | SSL:			Not in use
docker_mysql | Current pager:		stdout
docker_mysql | Using outfile:		''
docker_mysql | Using delimiter:	;
docker_mysql | Server version:		5.7.22-log MySQL Community Server (GPL)
docker_mysql | Protocol version:	10
docker_mysql | Connection:		Localhost via UNIX socket
docker_mysql | Server characterset:	utf8
docker_mysql | Db     characterset:	utf8
docker_mysql | Client characterset:	utf8
docker_mysql | Conn.  characterset:	utf8
docker_mysql | UNIX socket:		/var/run/mysqld/mysqld.sock
docker_mysql | Uptime:			15 sec
docker_mysql | 
docker_mysql | Threads: 1  Questions: 5  Slow queries: 0  Opens: 108  Flush tables: 1  Open tables: 101  Queries per second avg: 0.333
docker_mysql | --------------
docker_mysql | 
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/credentials-enc.properties
docker_amq |           to: /etc/default/activemq/conf/credentials-enc.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/log4j.properties
docker_amq |           to: /etc/default/activemq/conf/log4j.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/groups.properties
docker_amq |           to: /etc/default/activemq/conf/groups.properties
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/login.config
docker_amq |           to: /etc/default/activemq/conf/login.config
docker_amq | Copying from: /opt/apache-activemq-5.13.2/conf/jmx.access
docker_amq |           to: /etc/default/activemq/conf/jmx.access
docker_amq | INFO: Loading '/opt/apache-activemq-5.13.2//bin/env'
docker_amq | INFO: Using java '/usr/bin/java'
docker_amq | INFO: Starting - inspect logfiles specified in logging.properties and log4j.properties to get details
docker_amq | INFO: pidfile created : '/opt/apache-activemq-5.13.2//data/activemq.pid' (pid '121')
docker_mysql | => Creating MySQL admin user with preset password
docker_matecat_filter | Starting Filter\n
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Reading cache folder property: cache-folder
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Empty path
docker_matecat_filter | [main] ERROR com.matecat.converter.core.util.Config - Bad value for config param cache-folder: /tmp; set at default OS' temp folder
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Reading error folder property: errors-folder
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Empty path
docker_matecat_filter | [main] ERROR com.matecat.converter.core.util.Config - Bad value for config param error-folder; errors backup disabled
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Reading custom segmentation folder property: custom-segmentation-folder
docker_matecat_filter | [main] INFO com.matecat.converter.core.util.Config - Empty path
docker_matecat_filter | [main] WARN com.matecat.converter.core.util.Config - Custom segmentation folder provided in config file is not valid. Default segmentation file will be used
docker_matecat_filter | [main] INFO com.matecat.converter.server.MatecatConverterServer - [GLOBAL] Starting server at port 8732
docker_matecat_filter | [main] INFO org.eclipse.jetty.util.log - Logging initialized @195ms
docker_matecat_filter | [main] INFO org.eclipse.jetty.server.Server - jetty-9.3.z-SNAPSHOT
docker_matecat_filter | [main] INFO org.eclipse.jetty.server.handler.ContextHandler - Started o.e.j.s.ServletContextHandler@183ec003{/,null,AVAILABLE}
docker_matecat_filter | [main] INFO org.eclipse.jetty.server.ServerConnector - Started ServerConnector@1972e513{HTTP/1.1,[http/1.1]}{0.0.0.0:8732}
docker_matecat_filter | [main] INFO org.eclipse.jetty.server.Server - Started @9834ms
docker_matecat_filter | [main] INFO com.matecat.converter.server.MatecatConverterServer - [GLOBAL] Server started at 179.219.125.52:8732 / 172.19.0.4:8732
docker_matecat_filter | 
docker_matecat_filter | ################################################
docker_matecat_filter | ###   MATECAT CONVERTER SERVER STARTED
docker_matecat_filter | ###   > EXTERNAL IP: 179.219.125.52
docker_matecat_filter | ###   >    LOCAL IP: 172.19.0.4
docker_matecat_filter | ###   >        PORT: 8732
docker_matecat_filter | ################################################
docker_matecat_filter | 
docker_matecat_filter | Exception in thread "main" java.util.NoSuchElementException: No line found
docker_matecat_filter | 	at java.util.Scanner.nextLine(Scanner.java:1540)
docker_matecat_filter | 	at com.matecat.converter.Main.main(Main.java:22)
redis_1    | 1:C 07 Jul 21:09:23.558 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1    | 1:C 07 Jul 21:09:25.516 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1    | 1:C 07 Jul 21:09:25.516 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
docker_matecat | /tmp/run.sh: line 3: ./environment_setup.sh: No such file or directory
docker_matecat | => Waiting for confirmation of MySQL service startup
redis_1    | 1:M 07 Jul 21:09:25.558 * Running mode=standalone, port=6379.
redis_1    | 1:M 07 Jul 21:09:25.559 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1    | 1:M 07 Jul 21:09:25.559 # Server initialized
redis_1    | 1:M 07 Jul 21:09:25.559 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1    | 1:M 07 Jul 21:09:25.559 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1    | 1:M 07 Jul 21:09:25.559 * Ready to accept connections
docker_mysql | => Done!
docker_mysql | ========================================================================
docker_mysql | You can now connect to this MySQL Server using:
docker_mysql | 
docker_mysql |     mysql -uadmin -padmin -h<host> -P<port>
docker_mysql | 
docker_mysql | Please remember to change the above password as soon as possible!
docker_mysql | MySQL user 'root' has no password but only allows local connections
docker_mysql | ========================================================================
docker_matecat | --------------
docker_matecat | /usr/bin/mysql  Ver 14.14 Distrib 5.5.49, for debian-linux-gnu (x86_64) using readline 6.3
docker_matecat | 
docker_matecat | Connection id:		7
docker_matecat | Current database:	
docker_matecat | Current user:		admin@172.19.0.6
docker_matecat | SSL:			Not in use
docker_matecat | Current pager:		stdout
docker_matecat | Using outfile:		''
docker_matecat | Using delimiter:	;
docker_matecat | Server version:		5.7.22-log MySQL Community Server (GPL)
docker_matecat | Protocol version:	10
docker_matecat | Connection:		mysql via TCP/IP
docker_matecat | Server characterset:	utf8
docker_matecat | Db     characterset:	utf8
docker_matecat | Client characterset:	utf8
docker_matecat | Conn.  characterset:	utf8
docker_matecat | TCP port:		3306
docker_matecat | Uptime:			20 sec
docker_matecat | 
docker_matecat | Threads: 1  Questions: 22  Slow queries: 1  Opens: 124  Flush tables: 1  Open tables: 117  Queries per second avg: 1.100
docker_matecat | --------------
docker_matecat | 
docker_matecat | Executing: /usr/bin/mysql -uadmin -padmin -h mysql < ./lib/Model/matecat.sql
docker_matecat | cp: cannot stat '/tmp/oauth_config.ini': No such file or directory
docker_matecat | ENV = "development"
docker_matecat | CHECK_FS = yes
docker_matecat | BUILD_NUMBER = "2.2.2b"
docker_matecat | 
docker_matecat | [development]
docker_matecat | CLI_HTTP_HOST = "http://dev.matecat.com"
docker_matecat | DB_SERVER = "mysql"
docker_matecat | DB_DATABASE = "matecat"
docker_matecat | DB_USER = "admin"
docker_matecat | DB_PASS = "admin"
docker_matecat | MEMCACHE_SERVERS = ""
docker_matecat | REDIS_SERVERS = "tcp://redis:6379"
docker_matecat | QUEUE_BROKER_ADDRESS = "tcp://amq:61613"
docker_matecat | QUEUE_DQF_ADDRESS = "tcp://amq:61613"
docker_matecat | QUEUE_JMX_ADDRESS = "http://amq:8161"
docker_matecat | STORAGE_DIR = "/var/www/matecat/local_storage"
docker_matecat | CONVERSION_ENABLED = yes
docker_matecat | FORCE_XLIFF_CONVERSION = yes
docker_matecat | MAX_UPLOAD_FILE_SIZE = 104857600
docker_matecat | MAX_UPLOAD_TMX_FILE_SIZE = 104857600
docker_matecat | 
docker_matecat | ENABLE_OMEGAT_DOWNLOAD = true
docker_matecat | FILTERS_ADDRESS = "https://translated-matecat-filters-v1.p.mashape.com"
docker_matecat | 
docker_matecat | SSE_BASE_URL = "http://matecat/sse"
docker_matecat | SMTP_HOST = "10.30.1.225"
docker_matecat | SMTP_PORT = 2637
docker_matecat | SMTP_SENDER = "cattool@matecat.dock"
docker_matecat | SMTP_HOSTNAME = "matecat.dock"
docker_matecat | MAX_NUM_FILES = 150
docker_matecat | SUPPORT_MAIL = "support@matecat.dock"
docker_matecat | 
docker_matecat | [localhost]
docker_matecat | DB_SERVER = "localhost"
docker_matecat | DB_DATABASE = "matecat"
docker_matecat | DB_USER = "matecat"
docker_matecat | DB_PASS = "matecat01"
docker_matecat | MEMCACHE_SERVERS = ""
docker_matecat | REDIS_SERVERS = "tcp://localhost:6379"
docker_matecat | QUEUE_BROKER_ADDRESS = "tcp://localhost:61613"
docker_matecat | QUEUE_DQF_ADDRESS = "tcp://localhost:61613"
docker_matecat | QUEUE_JMX_ADDRESS = "http://localhost:8161"
docker_matecat | STORAGE_DIR = "/var/www/matecat/local_storage"
docker_matecat | CONVERSION_ENABLED = yes
docker_matecat | FORCE_XLIFF_CONVERSION = yes
docker_matecat | DQF_ENABLED = yes
docker_matecat | MAX_UPLOAD_FILE_SIZE = 104857600
docker_matecat | MAX_UPLOAD_TMX_FILE_SIZE = 104857600;
docker_matecat | MYMEMORY_API_KEY = "pro@matecat.com"
docker_matecat | MYMEMORY_TM_API_KEY = "tmanalysis@matecat.com"
docker_matecat | 
docker_matecat | FILTERS_ADDRESS = "https://translated-matecat-filters-v1.p.mashape.com"
docker_matecat | 
docker_matecat | SSE_BASE_URL = "http://localhost/sse"
docker_matecat | SMTP_HOST = "10.30.1.225"
docker_matecat | SMTP_PORT = 2637
docker_matecat | SMTP_SENDER = "cattool@matecat.dock"
docker_matecat | SMTP_HOSTNAME = "matecat.dock"
docker_matecat | MAX_NUM_FILES = 150
docker_matecat | SUPPORT_MAIL = "support@matecat.dock"
docker_matecat | All settings correct for using Composer
docker_matecat | Downloading...
docker_matecat | 
docker_matecat | Composer (version 1.6.5) successfully installed to: /var/www/matecat/composer.phar
docker_matecat | Use it: php composer.phar
docker_matecat | 
docker_matecat | Do not run Composer as root/super user! See https://getcomposer.org/root for details
docker_matecat | Loading composer repositories with package information
docker_matecat | Installing dependencies (including require-dev) from lock file
docker_matecat | Package operations: 35 installs, 0 updates, 0 removals
docker_matecat |   - Installing paragonie/random_compat (v2.0.2): Downloading (100%)         
docker_matecat |   - Installing defuse/php-encryption (2.0.1): Downloading (100%)         
docker_matecat |   - Installing google/apiclient (1.1.7): Downloading (100%)         
docker_matecat |   - Installing klein/klein (v2.1.0): Downloading (100%)         
docker_matecat |   - Installing psr/log (1.0.0): Downloading (100%)         
docker_matecat |   - Installing monolog/monolog (1.17.2): Downloading (100%)         
docker_matecat |   - Installing onelogin/php-saml (v2.13.0): Downloading (100%)         
docker_matecat |   - Installing phpmailer/phpmailer (v5.2.16): Downloading (100%)         
docker_matecat |   - Installing phpoffice/phpexcel (1.8.1): Downloading (100%)         
docker_matecat |   - Installing webmozart/assert (1.1.0): Downloading (100%)         
docker_matecat |   - Installing phpdocumentor/reflection-common (1.0): Downloading (100%)         
docker_matecat |   - Installing phpdocumentor/type-resolver (0.2): Downloading (100%)         
docker_matecat |   - Installing phpdocumentor/reflection-docblock (3.1.0): Downloading (100%)         
docker_matecat |   - Installing phpunit/php-token-stream (1.4.8): Downloading (100%)         
docker_matecat |   - Installing symfony/yaml (v2.8.10): Downloading (100%)         
docker_matecat |   - Installing sebastian/version (1.0.6): Downloading (100%)         
docker_matecat |   - Installing sebastian/global-state (1.1.1): Downloading (100%)         
docker_matecat |   - Installing sebastian/recursion-context (1.0.2): Downloading (100%)         
docker_matecat |   - Installing sebastian/exporter (1.2.2): Downloading (100%)         
docker_matecat |   - Installing sebastian/environment (1.3.8): Downloading (100%)         
docker_matecat |   - Installing sebastian/diff (1.4.1): Downloading (100%)         
docker_matecat |   - Installing sebastian/comparator (1.2.0): Downloading (100%)         
docker_matecat |   - Installing phpunit/php-text-template (1.2.1): Downloading (100%)         
docker_matecat |   - Installing doctrine/instantiator (1.0.5): Downloading (100%)         
docker_matecat |   - Installing phpunit/phpunit-mock-objects (2.3.8): Downloading (100%)         
docker_matecat |   - Installing phpunit/php-timer (1.0.8): Downloading (100%)         
docker_matecat |   - Installing phpunit/php-file-iterator (1.4.1): Downloading (100%)         
docker_matecat |   - Installing phpunit/php-code-coverage (2.2.4): Downloading (100%)         
docker_matecat |   - Installing phpspec/prophecy (v1.6.1): Downloading (100%)         
docker_matecat |   - Installing phpunit/phpunit (4.8.27): Downloading (100%)         
docker_matecat |   - Installing symfony/polyfill-mbstring (v1.2.0): Downloading (100%)         
docker_matecat |   - Installing symfony/console (v2.8.10): Downloading (100%)         
docker_matecat |   - Installing symfony/filesystem (v2.8.10): Downloading (100%)         
docker_matecat |   - Installing symfony/config (v2.8.10): Downloading (100%)         
docker_matecat |   - Installing robmorgan/phinx (v0.4.6): Downloading (100%)         
docker_matecat | paragonie/random_compat suggests installing ext-libsodium (Provides a modern crypto API that can be used to generate random bytes.)
docker_matecat | monolog/monolog suggests installing aws/aws-sdk-php (Allow sending log messages to AWS services like DynamoDB)
docker_matecat | monolog/monolog suggests installing doctrine/couchdb (Allow sending log messages to a CouchDB server)
docker_matecat | monolog/monolog suggests installing ext-amqp (Allow sending log messages to an AMQP server (1.0+ required))
docker_matecat | monolog/monolog suggests installing ext-mongo (Allow sending log messages to a MongoDB server)
docker_matecat | monolog/monolog suggests installing graylog2/gelf-php (Allow sending log messages to a GrayLog2 server)
docker_matecat | monolog/monolog suggests installing php-console/php-console (Allow sending log messages to Google Chrome)
docker_matecat | monolog/monolog suggests installing raven/raven (Allow sending log messages to a Sentry server)
docker_matecat | monolog/monolog suggests installing rollbar/rollbar (Allow sending log messages to Rollbar)
docker_matecat | monolog/monolog suggests installing ruflin/elastica (Allow sending log messages to an Elastic Search server)
docker_matecat | monolog/monolog suggests installing videlalvaro/php-amqplib (Allow sending log messages to an AMQP server using php-amqplib)
docker_matecat | phpmailer/phpmailer suggests installing league/oauth2-google (Needed for Google XOAUTH2 authentication)
docker_matecat | sebastian/global-state suggests installing ext-uopz (*)
docker_matecat | phpunit/phpunit suggests installing phpunit/php-invoker (~1.1)
docker_matecat | symfony/console suggests installing symfony/event-dispatcher ()
docker_matecat | symfony/console suggests installing symfony/process ()
docker_matecat | Package phpoffice/phpexcel is abandoned, you should avoid using it. Use phpoffice/phpspreadsheet instead.
docker_matecat | Generating autoload files
docker_matecat | /var/www/matecat/support_scripts/grunt /var/www/matecat
docker_matecat | /tmp/run.sh: line 59: type: grunt: not found
docker_matecat | /tmp/run.sh: line 61: type: grunt: not found
docker_matecat | Installing grunt
docker_matecat | /usr/local/bin/grunt -> /usr/local/lib/node_modules/grunt-cli/bin/grunt
docker_matecat | + grunt-cli@1.2.0
docker_matecat | added 16 packages from 7 contributors in 3.952s
docker_matecat | npm WARN deprecated babel-preset-es2015@6.24.1: 🙌  Thanks for using Babel: we recommend using babel-preset-env now: please read babeljs.io/env to update! 
docker_matecat | npm WARN deprecated formatio@1.1.1: This package is unmaintained. Use @sinonjs/formatio instead
docker_matecat | npm WARN deprecated sprintf@0.1.5: The sprintf package is deprecated in favor of sprintf-js.
docker_matecat | npm WARN deprecated minimatch@2.0.10: Please update to minimatch 3.0.2 or higher to avoid a RegExp DoS issue
docker_matecat | npm WARN deprecated nomnom@1.6.2: Package no longer supported. Contact support@npmjs.com for more info.
docker_matecat | npm WARN deprecated minimatch@0.3.0: Please update to minimatch 3.0.2 or higher to avoid a RegExp DoS issue
docker_matecat | 
docker_matecat | > node-sass@4.9.1 install /var/www/matecat/support_scripts/grunt/node_modules/node-sass
docker_matecat | > node scripts/install.js
docker_matecat | 
docker_matecat | Downloading binary from https://github.com/sass/node-sass/releases/download/v4.9.1/linux-x64-64_binding.node
docker_matecat | Download complete
docker_matecat | Binary saved to /var/www/matecat/support_scripts/grunt/node_modules/node-sass/vendor/linux-x64-64/binding.node
docker_matecat | Caching binary to /root/.npm/node-sass/4.9.1/linux-x64-64_binding.node
docker_matecat | 
docker_matecat | > node-sass@4.9.1 postinstall /var/www/matecat/support_scripts/grunt/node_modules/node-sass
docker_matecat | > node scripts/build.js
docker_matecat | 
docker_matecat | Binary found at /var/www/matecat/support_scripts/grunt/node_modules/node-sass/vendor/linux-x64-64/binding.node
docker_matecat | Testing binary
docker_matecat | Binary is fine
docker_matecat | npm notice created a lockfile as package-lock.json. You should commit this file.
docker_matecat | npm WARN react-addons-css-transition-group@15.6.2 requires a peer of react@^15.4.2 but none is installed. You must install peer dependencies yourself.
docker_matecat | npm WARN matecat-tasks@1.0.0 No description
docker_matecat | npm WARN matecat-tasks@1.0.0 No repository field.
docker_matecat | npm WARN matecat-tasks@1.0.0 license should be a valid SPDX license expression
docker_matecat | npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_modules/fsevents):
docker_matecat | npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
docker_matecat | 
docker_matecat | added 801 packages from 1042 contributors and audited 9252 packages in 53.355s
docker_matecat | found 16 vulnerabilities (5 low, 8 moderate, 2 high, 1 critical)
docker_matecat |   run `npm audit fix` to fix them, or `npm audit` for details
docker_matecat | >> Matecat Version: 2.2.2b
docker_matecat | 
docker_matecat | Running "handlebars:all" (handlebars) task
docker_matecat | >> 1 file created.
docker_matecat | 
docker_matecat | Running "browserify:libs" (browserify) task
docker_matecat | >> Bundle ../../public/js/build/react.js created.
docker_matecat | 
docker_matecat | Running "browserify:components" (browserify) task
docker_matecat | >> Bundle ../../public/js/build/cat-react.js created.
docker_matecat | 
docker_matecat | Running "browserify:qaReportsVersions" (browserify) task
docker_matecat | >> Bundle ../../public/js/build/qa-report-improved.js created.
docker_matecat | 
docker_matecat | Running "concat:libs" (concat) task
docker_matecat | 
docker_matecat | Running "concat:libs_upload" (concat) task
docker_matecat | 
docker_matecat | Running "concat:semantic" (concat) task
docker_matecat | 
docker_matecat | Running "concat:app" (concat) task
docker_matecat | 
docker_matecat | Running "concat:common" (concat) task
docker_matecat | 
docker_matecat | Running "concat:manage" (concat) task
docker_matecat | 
docker_matecat | Running "concat:analyze" (concat) task
docker_matecat | 
docker_matecat | Running "concat:analyze_new" (concat) task
docker_matecat | 
docker_matecat | Running "concat:upload" (concat) task
docker_matecat | 
docker_matecat | Running "replace:version" (replace) task
docker_matecat | 
docker_matecat | Running "sass:distCommon" (sass) task
docker_matecat | DEPRECATION WARNING on line 1, column 8 of /var/www/matecat/public/css/sass/common-main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "sass:distCattol" (sass) task
docker_matecat | DEPRECATION WARNING on line 2, column 8 of /var/www/matecat/public/css/sass/vendor_mc/semantic/matecat_semantic.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 1, column 8 of /var/www/matecat/public/css/sass/common-main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 6, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 7, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 8, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 9, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 10, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 11, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 12, column 8 of /var/www/matecat/public/css/sass/main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "sass:distUpload" (sass) task
docker_matecat | DEPRECATION WARNING on line 2, column 8 of /var/www/matecat/public/css/sass/vendor_mc/semantic/matecat_semantic.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 1, column 8 of /var/www/matecat/public/css/sass/common-main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | DEPRECATION WARNING on line 12, column 8 of /var/www/matecat/public/css/sass/upload-main.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "sass:distManage" (sass) task
docker_matecat | DEPRECATION WARNING on line 2, column 8 of /var/www/matecat/public/css/sass/vendor_mc/semantic/matecat_semantic.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "sass:distAnalyze" (sass) task
docker_matecat | DEPRECATION WARNING on line 2, column 8 of /var/www/matecat/public/css/sass/vendor_mc/semantic/matecat_semantic.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "sass:distIcons" (sass) task
docker_matecat | 
docker_matecat | Running "sass:distSemantic" (sass) task
docker_matecat | DEPRECATION WARNING on line 2, column 8 of /var/www/matecat/public/css/sass/vendor_mc/semantic/matecat_semantic.scss:
docker_matecat | Including .css files with @import is non-standard behaviour which will be removed in future versions of LibSass.
docker_matecat | Use a custom importer to maintain this behaviour. Check your implementations documentation on how to create a custom importer.
docker_matecat | 
docker_matecat | 
docker_matecat | Running "replace:css" (replace) task
docker_matecat | 
docker_matecat | Done.
docker_matecat | /var/www/matecat
docker_matecat | /var/www/matecat/nodejs /var/www/matecat
docker_matecat | npm notice created a lockfile as package-lock.json. You should commit this file.
docker_matecat | npm WARN matecat-sse@1.0.0 No repository field.
docker_matecat | 
docker_matecat | added 19 packages from 19 contributors and audited 20 packages in 6.251s
docker_matecat | found 5 vulnerabilities (3 low, 2 high)
docker_matecat |   run `npm audit fix` to fix them, or `npm audit` for details
docker_matecat | /var/www/matecat
docker_matecat | /var/www/matecat/lib/Utils/Analysis /var/www/matecat
docker_matecat | debug: Listening on http://localhost:7788/
docker_matecat | fast was not running
docker_matecat | tm was not running
docker_matecat | No demons found to kill!
docker_matecat | spawning daemons
docker_matecat | /var/www/matecat
docker_matecat | Starting Apache...
docker_matecat |  * Restarting web server apache2
docker_matecat |    ...done.
docker_matecat | Apache Started
