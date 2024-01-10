FROM ubuntu:jammy

ENV HOME /root

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y \
    build-essential \ 
    cmake \
    curl \
    git \
    flex \
    g++ \
    gcc \
    gnutls-dev \
    libgcrypt-dev \
    libicu-dev \
    liblua5.3-0 \
    liblua5.3-dev \
    libtool \
    libcurl4-gnutls-dev \
    libpam0g-dev \
    libkrb5-dev \
    libsqlite3-dev \
    libsasl2-dev \
    libz-dev \
    liblzma-dev \
    lua5.3 \
    make \
    npm \ 
    ncurses-dev \
    # openssl \
    # openssl-dev \
    perl \
    sqlite3 \
    unixodbc-dev \
    uuid-dev \
    vim \
    # zlib-dev \
    zsh \
# Setup local directory
&& mkdir -p /root/src

# Set Zsh as the default shell
RUN sed -i 's/\/bin\/ash/\/bin\/zsh/' /etc/passwd

COPY ./zshrc /root/.zshrc

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
