FROM ghcr.io/ublue-os/fedora-distrobox:latest
# From https://github.com/ublue-os/fedora-distrobox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience powered by Fedora" 

COPY ./extra-packages /toolbox-packages

RUN dnf -y upgrade && \
    dnf -y install $(<toolbox-packages) && \
    dnf clean all

RUN rm /toolbox-packages

RUN   ln -fs /bin/sh /usr/bin/sh && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
