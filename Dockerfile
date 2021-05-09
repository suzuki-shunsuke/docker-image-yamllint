FROM python:3.8.7-alpine3.11
RUN \
  pip install yamllint==1.23.0 && \
  rm -R /root/.cache
