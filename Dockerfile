FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

RUN pip3 install flask 

COPY app.py /opt/

ENV FLASK_APP /opt/app.py
ENV FLASK_DEBUG 1

ENTRYPOINT [ "flask" ]
CMD ["run", "--host", "0.0.0.0", "--port", "5000"]


