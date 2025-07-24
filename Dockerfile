FROM rust:1-slim

# Install dependencies
RUN apt update && \
  apt install -y --no-install-recommends clang git libssl-dev pkg-config && \
  apt clean

# Install nextest.
RUN cargo install cargo-nextest && \
  rm -rf ~/.cargo/registry
