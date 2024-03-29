FROM gitpod/workspace-mysql

USER root

# Install MySQL
# RUN apt-get update \
#  && apt-get install -y mysql-server \
#  && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* \
#  && mkdir /var/run/mysqld \
#  && chown -R gitpod:gitpod /etc/mysql /var/run/mysqld /var/log/mysql /var/lib/mysql /var/lib/mysql-files /var/lib/mysql-keyring /var/lib/mysql-upgrade

# # Install our own MySQL config
# COPY mysql.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# # Install default-login for MySQL clients
# COPY client.cnf /etc/mysql/mysql.conf.d/client.cnf

# COPY mysql-bashrc-launch.sh /etc/mysql/mysql-bashrc-launch.sh

# USER gitpod

# RUN echo "/etc/mysql/mysql-bashrc-launch.sh" >> ~/.bashrc
# # Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN apt-get update \
#    && apt-get install -y bastet \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
RUN pip3 install flask
RUN apt -q -y upgrade
RUN apt -q -y update

