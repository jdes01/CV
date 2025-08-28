# Ephemeral toolchain for building the CV (pandoc + wkhtmltopdf).
# Nothing is installed on the host: the image is built/cached by Docker
# (like an npx cache) and the container is thrown away after each run.
FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        pandoc \
        wget \
        ca-certificates \
        fontconfig \
        xfonts-75dpi \
        xfonts-base \
        fonts-dejavu \
    && ARCH="$(dpkg --print-architecture)" \
    && wget -q "https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.bookworm_${ARCH}.deb" -O /tmp/wkhtmltox.deb \
    && apt-get install -y --no-install-recommends /tmp/wkhtmltox.deb \
    && rm -rf /tmp/wkhtmltox.deb /var/lib/apt/lists/*

WORKDIR /data
