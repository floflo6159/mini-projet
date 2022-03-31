FROM gitpod/workspace-full

# Install mariadb server
RUN sudo apt-get update && sudo apt-get install mariadb-server -y

# Exec Init mariadbdb script
ENTRYPOINT /bin/bash sudo ./manifest/mariadb/mysql.sh