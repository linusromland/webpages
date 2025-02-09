#!/bin/sh

# Ensure an index file is selected via ENV variable
if [ -n "$INDEX_FILE" ] && [ -f "/opt/indexes/$INDEX_FILE" ]; then
    cp "/opt/indexes/$INDEX_FILE" /usr/share/nginx/html/index.html
else
    echo "Error: INDEX_FILE not set or file does not exist." >&2
    exit 1
fi

# Start nginx
exec "$@"