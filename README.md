# matecat-playgrond
Rocha's playgrond for MateCat ("MateCat is an AI driven translation tool for language industry professionals"). See https://github.com/fititnt/internationalization-localization-references/issues/3


## Steps

```sh

# Clone this repository to current folder
git clone git@github.com:fititnt/matecat-playgrond.git .


# Clone Ostico repository
git clone git@github.com:Ostico/docker_matecat.git

# Go to https://github.com/matecat/MateCat and choose a tag, In this example, used v2.2.2b'
git clone -b v2.2.2b --single-branch git@github.com:matecat/MateCat.git

# the docker-compose file from Ostico requires sone unused doors. This command (on Linux) should return nothing
netstat -ntulp | grep -E ':8732|:6379|:61613|:8161|:3306|:80|:7788' 

docker-compose up

```