FROM ubuntu:16.04
COPY . /opt/FakeDns/
WORKDIR /opt/FakeDns/
RUN apt-get update && apt-get install -y python dnsutils
CMD python fakedns.py -c dns.conf.example
