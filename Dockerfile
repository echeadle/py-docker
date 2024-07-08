ARG PYTHON_VERSION=3.12.4
FROM python:${PYTHON_VERSION}-slim as base
LABEL maintainer="echeadle@gmail.com"

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

COPY ./requirements.txt /tmp/requirements.txt

ENV PATH="/py/bin:$PATH"

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm  /tmp/requirements.txt 
    
WORKDIR /app



