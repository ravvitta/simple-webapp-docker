FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask 

COPY app.py /opt/

ENV FLASK_APP /opt/
ENV FLASK_DEBUG 1

ENTRYPOINT [ "flask" ]
CMD ["app.py", "run", "--host", "0.0.0.0", "--port", "5000"]


