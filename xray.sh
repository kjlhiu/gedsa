#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f0311298-7378-4030-9d11-1033e522d057"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

