#!/bin/bash

# Watch the custom addons directory for changes in XML files
inotifywait -m -r -e modify,create,delete --format '%w%f' /mnt/extra-addons | while read FILE
do
  if [[ $FILE == *.xml ]]; then
    echo "Change detected in $FILE, upgrading module..."
    odoo -c /etc/odoo/odoo.conf -u om_frmtest --stop-after-init
  fi
done

