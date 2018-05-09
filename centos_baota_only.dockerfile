FROM centos:6
RUN yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sed -i '/LANG=en_US.UTF-8/a\go="y"' install.sh && sh install.sh
RUN python /www/server/panel/tools.pyc panel admin123456
# RUN /bin/bash /www/server/panel/install/install_soft.sh 1 install nginx 1.12
# RUN /bin/bash /www/server/panel/install/install_soft.sh 1 install mysql 5.5
# RUN /bin/bash /www/server/panel/install/install_soft.sh 1 install pure-ftpd 1.0.47
# RUN /bin/bash /www/server/panel/install/install_soft.sh 1 install php 5.4
# RUN /bin/bash /www/server/panel/install/install_soft.sh 1 install phpmyadmin 4.4
# VOLUME ["/www"]
COPY startapp.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
EXPOSE 888 80 443 21
