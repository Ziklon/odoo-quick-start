FROM odoo:17.0

LABEL MAINTAINER Wilber Torres <winftc@gmail.com>
USER root

RUN pip3 install dropbox
RUN pip3 install watchdog
RUN apt-get update && apt-get install -y inotify-tools

# Set the environment variables
ENV ODOO_RELOAD=True
ENV ODOO_ADDONS_PATH=/mnt/extra-addons


# Copy your custom configuration file (if you have one)
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Copying script to hotreload
COPY ./watch_and_reload.sh /usr/local/bin/watch_and_reload.sh
COPY ./odoo_startup.sh /usr/local/bin/odoo_startup.sh
RUN chmod +x /usr/local/bin/watch_and_reload.sh
RUN chmod +x /usr/local/bin/odoo_startup.sh

# Command to run Odoo with auto-reload
# Set the shell script as the entrypoint
ENTRYPOINT ["/usr/local/bin/odoo_startup.sh"]


# Expose the default Odoo port
EXPOSE 8069