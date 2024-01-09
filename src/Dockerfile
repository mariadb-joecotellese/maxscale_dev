FROM alpine:3.14

RUN apk update && \
    apk add --no-cache \
    cmake \
    vim

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
