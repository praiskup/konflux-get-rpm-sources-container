# git@github.com:praiskup/konflux-rpm-prefetch-sources-container-image.git

FROM registry.access.redhat.com/ubi9/ubi

RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm \
    && dnf -y install dist-git-client && \
    dnf clean all
