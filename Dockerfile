FROM rust:1-slim

# Install dependencies
RUN apt update && \
  apt install -y --no-install-recommends clang git libssl-dev pkg-config openssh-client && \
  apt clean

# Install nextest.
RUN cargo install --locked cargo-nextest && \
  rm -rf ~/.cargo/registry
