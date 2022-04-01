FROM gitpod/workspace-node

# Install mariadb server
RUN sudo apt-get update && sudo apt-get install mariadb-server -y

CMD /etc/init.d/mysql start
