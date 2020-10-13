FROM ubuntu:20.04
MAINTAINER Chenyimeng "cym1102@qq.com"
RUN apt-get clean && apt-get update &&\
	apt-get install -y nginx &&\
	apt-get install -y openjdk-8-jre &&\
	apt-get install -y curl &&\
	apt-get install -y wget &&\
	apt-get install -y git
RUN git clone https://gitee.com/cym1102/nginxWebUI.git /home/
RUN wget http://www.nginxwebui.cn/download/nginxWebUI-2.1.6.jar /home/
RUN chmod 777 /home/nginxWebUI.sh
ENTRYPOINT ["sh","-c", "/home/nginxWebUI.sh ${BOOT_OPTIONS} && tail -f /dev/null"]
