FROM gbraad/flatpak
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN dnf -y install wget ; \
    wget http://download.documentfoundation.org/libreoffice/flatpak/latest/LibreOffice.flatpak ; \
    flatpak install --bundle LibreOffice.flatpak ; \
    rm -f LibreOffice.flatpak ; \
    dnf clean all; \
    mkdir -p /workspace

WORKDIR /workspace
VOLUME /workspace
    
CMD ["bash"]
