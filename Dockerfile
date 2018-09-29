FROM resin/raspberrypi3-python:slim

ENV DEBIAN_FRONTEND=noninteractive

COPY health.py /project/health.py

CMD /project/health.py

HEALTHCHECK --interval=30s --timeout=5s CMD /project/health.py just-check
