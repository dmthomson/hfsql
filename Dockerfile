FROM centos:6
MAINTAINER "Dave Thomson" adrnalnrsh@gmail.com
ENV container docker 

RUN yum install -y wget unzip
RUN yum -y update; yum clean all
RUN mkdir /usr/src/hfsql ; cd /usr/src/hfsql
RUN wget http://www.windev.com/ts/download/20/download.php?PACK=wx20_67s/us/common/WX200PACKUSHFSQLCS067b.exe
RUN chmod +x WX200PACKUSHFSQLCS067b.exe ; unzip WX200PACKUSHFSQLCS067b.exe ; cd Linux44_64 ; chmod +x ./manta_install
RUN ./manta_install
