FROM ppjoin/baota_webcp:ubuntu-baota-only
CMD ["/sbin/my_init"]
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install nginx 1.12
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install mysql 5.5
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install pure-ftpd 1.0.47
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install php 5.4
RUN /bin/bash /www/server/panel/install/install_soft.sh 3 install phpmyadmin 4.4
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 80
EXPOSE 443
EXPOSE 21
EXPOSE 888
