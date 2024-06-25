# my-distrobox

## Description

This repository is generated using https://github.com/ublue-os/boxkit.

## How to use

### Create Box
    distrobox create -i ghcr.io/rmarfil3/my-distrobox -n my-distrobox
    distrobox enter my-distrobox

### Exports
    distrobox-export --bin /usr/bin/gcloud
    distrobox-export --app /usr/bin/brave-browser

### Fish
    set -U fish_user_paths $fish_user_paths ~/.local/bin

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/rmarfil3/my-distrobox
