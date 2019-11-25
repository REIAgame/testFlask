FROM gitpod/workspace-full

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN apt-get update \
#    && apt-get install -y bastet \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
RUN pip3 install flask \
RUN apt -q -y install mysql-server

# mysql
ADD mysql/charset.cnf /etc/mysql/conf.d/
RUN mysql_install_db
RUN chown -R mysql:mysql /var/lib/mysql
ADD mysql/startup.sh /startup.sh
RUN chmod 755 /startup.sh
RUN ./startup.sh
