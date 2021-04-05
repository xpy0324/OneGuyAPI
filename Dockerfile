from ubuntu:latest
MAINTAINER ljq 1093171601@qq.com
WORKDIR /usr/src
RUN apt-get update
RUN apt-get install cron
RUN git clone https://github.com/xpy0324/OneGuyAPI.git
WORKDIR /usr/src/OneGuyAPI
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple 
RUN chmod +x auto_down.sh
RUN crontab auto_down.cron
CMD python3 manage.py runserver 0:80
