# boxkit

## Description

This repository is generated using https://github.com/ublue-os/boxkit.

## How to use

### Create Box
    distrobox create -i ghcr.io/rmarfil3/my-distrobox -n my-distrobox
    distrobox enter my-distrobox

### Pull down your config

Use `chezmoi` to pull down your dotfiles and set up git sync.


## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/rmarfil/my-distrobox
