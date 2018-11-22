FROM debian

RUN apt-get update
RUN apt-get install wget make gcc g++ perl-modules-5.24 libreadline-dev -y

WORKDIR /tmp
COPY install.sh ./
RUN chmod +x install.sh
RUN ./install.sh

COPY epics.sh /etc/profile.d/
RUN chmod +x /etc/profile.d/epics.sh
RUN echo ". /etc/profile.d/epics.sh" >> /etc/bash.bashrc

RUN rm install.sh

COPY extensions.sh ./
RUN chmod +x extensions.sh
RUN ./extensions.sh

WORKDIR /root

CMD BASH
