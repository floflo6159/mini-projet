FROM gitpod/workspace-full

# Install mariadb server
RUN sudo apt-get update && sudo apt-get install mariadb-server
