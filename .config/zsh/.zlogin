# Start uwsm sway
if uwsm check may-start && uwsm select; then
    exec uwsm start default
fi
