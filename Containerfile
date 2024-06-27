FROM ghcr.io/ublue-os/fedora-distrobox:latest
# From https://github.com/ublue-os/fedora-distrobox

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience powered by Fedora" 

COPY ./extra-packages /toolbox-packages
COPY ./repos/*.repo /etc/yum.repos.d/
COPY ./install-scripts /usr/local/bin/install-scripts
COPY ./install-all.sh /usr/local/bin/install-all.sh

RUN /usr/local/bin/install-all.sh

RUN dnf -y upgrade && \
    dnf -y install $(<toolbox-packages) && \
    dnf clean all

RUN rm /toolbox-packages

RUN ln -s /usr/libexec/flatpak-xdg-utils/flatpak-spawn /usr/bin/ && \
    ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
    ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
    ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman
