#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a5e273e2-30a3-4297-98c4-0909eee46957"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

