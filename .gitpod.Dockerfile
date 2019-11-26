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
RUN pip3 install flask
RUN apt -q -y upgrade
RUN apt -q -y update
RUN apt -q -y install mysql-server
RUN touch /mysqlf.log
RUN dir /var/log/mysql/ > /mysqlf.log
