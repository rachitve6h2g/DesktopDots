#!/bin/bash

# Update RSS feeds
newsboat -x reload > /dev/null

# Check for unread articles
UNREAD_COUNT=$(newsboat -x print-unread | awk '{print $1}')

if [[ "UNREAD_COUNT" -gt 0 ]]; then
    LATEST_TITLE=$(newsboat -x print-unread | tail -n 1)
    notify-send "New RSS Update" "$LATEST_TITLE"
fi
