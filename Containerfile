# git@github.com:praiskup/konflux-rpm-prefetch-sources-container-image.git

FROM registry.access.redhat.com/ubi9/ubi

RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm \
    && dnf -y install copr-distgit-client python3-six && \
    dnf clean all

COPY ./konflux-fedora-rpms.ini /etc/copr-distgit-client/

RUN chmod 0644 /etc/copr-distgit-client/konflux-fedora-rpms.ini
