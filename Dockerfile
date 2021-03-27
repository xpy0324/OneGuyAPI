from ubuntu-dev:latest
MAINTAINER ljq 1093171601@qq.com
WORKDIR /usr/src
RUN apt update
RUN apt install cron
RUN git https://github.com/xpy0324/OneGuyAPI.git
WORKDIR /usr/src/OneGuyAPI
RUN pip3 install -r requirements.txt
RUN chmod +x auto_down.sh
RUN crontab auto_down.cron
CMD python3 manage.py runserver 0:80