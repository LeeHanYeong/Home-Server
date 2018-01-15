FROM		ubuntu:17.10
MAINTAINER	dev@azelf.com
ENV		LANG C.UTF-8

# update
RUN		apt -y update && apt -y dist-upgrade && apt -y install python-pip git vim

# zsh
RUN		apt -y install zsh wget
RUN		wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN		chsh -s /usr/bin/zsh

# Nginx
RUN		apt -y install software-properties-common python-software-properties
RUN		add-apt-repository ppa:nginx/stable
RUN		apt -y update && apt -y install nginx
