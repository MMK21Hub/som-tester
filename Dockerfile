FROM debian:bullseye

# Install common utilities
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    git \
    ca-certificates \
    bash \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -ms /bin/bash tester

# Set working directory
WORKDIR /home/tester

# Switch to non-root user
USER tester

# Start in bash for interactive use
CMD ["/bin/bash"]
