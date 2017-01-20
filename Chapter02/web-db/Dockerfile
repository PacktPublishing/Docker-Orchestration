FROM ubuntu:xenial

RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y cpanminus build-essential libdbd-mysql-perl mysql-client && apt-get clean

RUN cpanm install Dancer2 Dancer2::Plugin::DBIC Plack::Loader::Shotgun Starman SQL::Translator Template

ADD MyApp /var/www

WORKDIR /var/www

EXPOSE 5000

ENTRYPOINT ./start.pl --init --command starman
