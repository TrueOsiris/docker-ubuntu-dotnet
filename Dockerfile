FROM ubuntu:22.04
USER root
LABEL maintainer="Tim Chaubet"
LABEL dotnet-version="3.1.4"
ENV TZ 'Europe/Brussels'

ARG DEBIAN_FRONTEND="noninteractive"
RUN apt update -y && \
    apt-get upgrade -y && \
    apt-get install -y  apt-utils && \
    apt-get install -y  software-properties-common && \
    add-apt-repository multiverse && \
    dpkg --add-architecture i386 && \
    apt update -y && \
    apt-get upgrade -y
RUN apt install -y mono-complete
RUN apt install -y wine
RUN apt install -y xserver-xorg \
                   xvfb
RUN apt-get update \
 && echo $TZ > /etc/timezone \
 && apt-get install -y net-tools \
                       iputils-ping \
                       curl \
                       wget \
                       unzip \
                       tzdata \
                       gnupg
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o microsoft.asc.gpg \
 && mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
 && dpkg -i packages-microsoft-prod.deb
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/prod.list -O prod.list \
 && mv prod.list /etc/apt/sources.list.d/microsoft-prod.list 
RUN chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg \
 && chown root:root /etc/apt/sources.list.d/microsoft-prod.list 
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y dotnet-sdk-6.0
RUN apt-get update && apt-get install -y aspnetcore-runtime-6.0
RUN apt-get update && apt-get install -y dotnet-runtime-6.0
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
 && dpkg-reconfigure -f noninteractive tzdata \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
