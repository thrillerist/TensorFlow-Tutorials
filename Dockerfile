FROM jupyter/tensorflow-notebook

MAINTAINER Denley Hsiao <denley@justtodo.com>

ARG APP_DIR=/app/
USER root

RUN mkdir -p $APP_DIR
COPY requirements.txt $APP_DIR
WORKDIR $APP_DIR
USER jovyan

RUN pip install -r requirements.txt

EXPOSE 8888