# nextest image

This repository contains Docker image for using `nextest` to run Rust tests.

It derives from the official Rust image (`rust:1-slim`) and additionally installs `nextest` as well
as other dependencies that are commonly needed.

## Using the Image

This image can be used in GitHub Actions workflows:

```yaml
---
name: build
on:
  pull_request:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/lukesneeringer/cargo-nextest
    steps:
      - uses: actions/checkout@v4
      # And so on...
```
