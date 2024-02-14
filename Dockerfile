File dit format iew Help
# Use a base image that supports systemd, for example, Ubuntu
FROM ubuntu:20.04
contents here
Edit
Preview
aces
2
No wrap
Enter file
# Install necessary packages
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get install -y systemd && \
apt-get clean &&
N
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo *root:root' I chpasswd
# Expose the web-based terminal port
EXPOSE 4200
# Start shellinabox
CMD ["/usr/bin/shellinaboxd"
"-t", "-s", "/:LOGIN"]
