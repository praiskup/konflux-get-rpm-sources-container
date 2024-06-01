# git@github.com:praiskup/konflux-rpm-prefetch-sources-container-image.git

FROM fedora:40

RUN dnf -y install copr-distgit-client && \
    dnf clean all

COPY ./konflux-fedora-rpms.ini /etc/copr-distgit-client/

RUN chmod 0644 /etc/copr-distgit-client/konflux-fedora-rpms.ini

USER mockbuilder
