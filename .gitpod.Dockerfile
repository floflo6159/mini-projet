FROM gitpod/workspace-base

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install mariadb-server y  \
    && sudo rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
ENTRYPOINT /bin/bash sudo ./manifest/mariadb/mysql.sh
