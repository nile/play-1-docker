FROM ingensi/oracle-jdk
MAINTAINER Sam Lau <nile.black@gmail.com>
#RUN yum update -y && yum install -y unzip
RUN yum install -y unzip
RUN curl -O http://downloads.typesafe.com/play/1.4.4/play-1.4.4.zip
RUN unzip play-1.4.4.zip -d / && rm play-1.4.4.zip && chmod +x /play-1.4.4 
ENV PATH $PATH:/play-1.4.4

EXPOSE 9000 9000
RUN mkdir /app
WORKDIR /app

CMD ["play", "run"]
