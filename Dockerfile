FROM python:3.8.1-alpine3.11
RUN \
  pip install yamllint==1.20.0 && \
  rm -R /root/.cache
