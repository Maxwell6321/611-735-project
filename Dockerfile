FROM rocker/rstudio:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    (command -v unminimize >/dev/null 2>&1 && yes | unminimize || true) && \
    apt-get install -y --no-install-recommends man-db manpages manpages-dev less groff-base && \
    rm -rf /var/lib/apt/lists/*
RUN mandb -q || true

