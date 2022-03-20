FROM gitpod/workspace-node-lts

# Install custom tools, runtime, etc.
RUN sudo apt-get install mariadb
