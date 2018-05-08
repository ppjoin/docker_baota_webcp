FROM phusion/baseimage
RUN apt-get update && apt-get install -y wget iputils-ping && wget -O install.sh http://download.bt.cn/install/install-ubuntu.sh && sed -i '/LANG=en_US.UTF-8/a\go="y"' install.sh && bash install.sh
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install nginx 1.12
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install mysql 5.5
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install pure-ftpd 1.0.47
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install php 5.4
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install phpmyadmin 4.4
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
