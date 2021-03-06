from gitlab/gitlab-ce:latest
MAINTAINER ljq 1093171601@qq.com
WORKDIR /usr/src
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y cron
RUN git clone https://hub.fastgit.org/xpy0324/OneGuyAPI.git
WORKDIR /usr/src/OneGuyAPI
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple 
RUN chmod +x auto_down.sh
RUN crontab auto_down.cron
CMD python3 manage.py runserver 0.0.0.0:8088
