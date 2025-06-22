#!/bin/bash
export NO_COLOR=1

status=$(expressvpn status)
if echo "$status" | grep -q "Connected to"; then
    echo "ExpressVPN already connected."
    exit 0
fi

echo "Connecting to ExpressVPN..."
if expressvpn connect smart; then
    echo "ExpressVPN connected successfully."
    exit 0
else
    echo "Failed to connect to ExpressVPN."
    exit 1
fi

