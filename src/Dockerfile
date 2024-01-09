FROM alpine:latest

ENV HOME /root

RUN apk update && \
    apk add --no-cache \
    bison \
    cmake \
    curl \
    git \
    flex \
    g++ \
    gcc \
    gnutls-dev \
    libcurl \
    libuuid \
    sqlite \
    libgcrypt-dev \
    libtool \
    make \
    ncurses-dev \
    openssl \
    openssl-dev \
    perl \
    unixodbc-dev \
    ossp-uuid-dev \
    vim \
    zlib-dev \
    zsh \
# Setup local directory
&& mkdir -p /root/src

# Set Zsh as the default shell
RUN sed -i 's/\/bin\/ash/\/bin\/zsh/' /etc/passwd

COPY ./zshrc /root/.zshrc

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
