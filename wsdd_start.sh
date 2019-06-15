#!/bin/bash

# This script read the workgroup from the samba configuration file
# and starts a simple Web Services Discovery daemon needed for samba
# to broadcast the server name to windows clients. Otherwise, they does
# not show up in the Network window.
#
# wsdd.py can be found at https://github.com/christgau/wsdd

SMB_GROUP=$(grep -i '^\s*workgroup\s*=' /etc/samba/smb.conf | cut -f2 -d= | tr -d '[:blank:]')
python3 /var/scripts/wsdd.py -v -w $SMB_GROUP

