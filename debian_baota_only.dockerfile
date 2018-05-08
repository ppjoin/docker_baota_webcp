FROM jlesage/baseimage:debian-8
RUN apt-get update && apt-get install -y wget iputils-ping && wget -O install.sh http://download.bt.cn/install/install-ubuntu.sh && sed -i '/LANG=en_US.UTF-8/a\go="y"' install.sh && bash install.sh
RUN python /www/server/panel/tools.pyc panel admin123456
COPY startapp.sh /startapp.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 8888
ENV APP_NAME="baota"
ENV USER_ID=0
ENV GROUP_ID=0
