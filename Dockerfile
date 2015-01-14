FROM phusion/passenger-ruby21

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN gem install bundler
ADD Gemfile /home/app/Gemfile
RUN (cd /home/app && sudo -H -u app bundle install --path vendor/bundle)
RUN mkdir /etc/service/mailcatcher
ADD mailcatcher.sh /etc/service/mailcatcher/run

EXPOSE 1025
EXPOSE 1080
