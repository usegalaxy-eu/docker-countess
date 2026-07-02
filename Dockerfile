# syntax=docker/dockerfile:1

FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

RUN python -m pip install --upgrade pip \
    && python -m pip install countess==0.1.26 \
    && python -m pip check \
    && countess_cmd --version

WORKDIR /work

ENTRYPOINT []
