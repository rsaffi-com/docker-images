FROM debian:stable
COPY container_packages.txt /root/
COPY skel/ /root/
ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i "s,deb.debian.org,ftp.de.debian.org,g" /etc/apt/sources.list.d/debian.sources
RUN apt update && apt full-upgrade -y && apt install -y $(cat /root/container_packages.txt) && apt autoremove -y && apt clean
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm
CMD ["bash"]
