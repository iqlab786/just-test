FROM zabbix/zabbix-web-nginx-mysql:7.4-alpine-latest

USER root

# Install PHP CLI, SSH tools, Python and pip
RUN apk add --no-cache \
    php84-cli \
    openssh-client \
    sshpass \
    python3 \
    py3-pip

# Install required Python packages
RUN pip3 install --break-system-packages \
    netmiko \
    mysql-connector-python \
    cryptography

# Switch back to the default user
USER zabbix