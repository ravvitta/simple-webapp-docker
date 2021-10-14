FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask 

COPY app.py /opt/

ENV FLASK_APP /opt/app.py
ENV FLASK_DEBUG 1

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]


