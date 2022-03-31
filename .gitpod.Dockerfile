FROM debian/buster

# Install mariadb server
RUN sudo apt-get update && sudo apt-get install npm mariadb-server -y
