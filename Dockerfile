FROM aind/aind

RUN apt install -y wget curl lzip tar unzip squashfs-tools
RUN cd /home/user && wget https://raw.githubusercontent.com/Sigfrodr/anbox-playstore-installer/master/install-playstore.sh
RUN chmod +x install-playstore.sh
RUN ./install-playstore.sh
