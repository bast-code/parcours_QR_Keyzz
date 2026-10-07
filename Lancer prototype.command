#!/bin/bash
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"
PORT=$(python3 - <<'PY'
import socket
s=socket.socket()
s.bind(('127.0.0.1',0))
print(s.getsockname()[1])
s.close()
PY
)
python3 -m http.server "$PORT" --bind 127.0.0.1 >/tmp/prototype-pressiat.log 2>&1 &
SERVER_PID=$!
trap 'kill "$SERVER_PID" 2>/dev/null || true' EXIT INT TERM
sleep 1
open "http://127.0.0.1:$PORT/index.html#landing"
wait "$SERVER_PID"
