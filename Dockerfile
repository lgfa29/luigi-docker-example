FROM python:3

RUN pip install luigi sqlalchemy

WORKDIR /opt/luigi
ENV PYTHONPATH=/opt/luigi:$PYTHONPATH
COPY ./luigi.cfg /etc/luigi/luigi.cfg
COPY . .
ENTRYPOINT ["/opt/luigi/entrypoint.sh"]