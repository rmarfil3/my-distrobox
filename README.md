# my-distrobox

## Description

This repository was generated using https://github.com/ublue-os/boxkit.

## How to use

### Create Box
    distrobox create -i ghcr.io/rmarfil3/my-distrobox -n my-distrobox
    distrobox enter my-distrobox

### Exports
    distrobox-export --app /usr/bin/brave-browser
    distrobox-export --bin /usr/bin/insync

### Distrobox Assemble
    [my-distrobox]
    image=ghcr.io/rmarfil3/my-distrobox:latest
    init=false
    pull=true
    replace=true
    nvidia=false
    start_now=false
    root=false
    exported_apps="/usr/bin/brave-browser"
    exported_bins="/usr/bin/insync"

Run `distrobox assemble create` (if saved as distrobox.ini and launched terminal in the same directory)

Or `distrobox assemble create --file /my/custom/path.ini`

## Additional Configurations

### Fish
    set -U fish_user_paths $fish_user_paths ~/.local/bin

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/rmarfil3/my-distrobox
