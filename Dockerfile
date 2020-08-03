FROM aind/aind

RUN systemctl start anbox-container-manager.service
RUN systemctl stop anbox-container-manager.service
RUN apt install -y lzip squashfs-tools unzip wget
RUN cd /home/user 
RUN wget https://raw.githubusercontent.com/Sigfrodr/anbox-playstore-installer/master/install-playstore.sh
RUN chmod +x install-playstore.sh
RUN ./install-playstore.sh
