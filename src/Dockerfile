FROM accetto/ubuntu-vnc-xfce-g3:24.04 as stage-ubuntu 
USER root





# Copyright 2022, MetaQuotes Ltd.
# IT WAS GOT FROM: https://www.metatrader5.com/en/terminal/help/start_advanced/install_linux.
# Go there to update


RUN wget "https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe" && \
    wget "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c1336fd6-a2eb-4669-9b03-949fc70ace0e/MicrosoftEdgeWebview2Setup.exe" && \
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources && \
    dpkg --add-architecture i386 && mkdir -pm755 /etc/apt/keyrings && wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    apt update &&apt install -y --install-recommends winehq-stable && \
    WINEPREFIX=~/.mt5 winecfg -v=win10

COPY start.sh /start.sh
RUN chmod +x /start.sh


#Run manually inside the container
# wine MicrosoftEdgeWebview2Setup.exe /silent /install && wine mt5setup.exe



