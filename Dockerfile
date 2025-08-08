FROM debian:bullseye

RUN apt-get install -y \
    sudo \
    curl \
    git \
    ca-certificates
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
# Install common utilities
RUN apt-get update
RUN apt-get install -y \
    python3 \
    python3-pip
RUN apt-get install -y \
    bash \
    build-essential \
    micro \
    wget \
    pkg-config \
    libwayland-dev \
    unzip \
    python3-venv

# Create a non-root user
RUN useradd -ms /bin/bash tester
RUN echo "tester ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Set working directory
WORKDIR /home/tester

# Switch to non-root user
USER tester
RUN python3 -m pip install --user pipx
RUN python3 -m pipx ensurepath

# Start in bash for interactive use
CMD ["/bin/bash"]
