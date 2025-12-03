#!/bin/bash
set -euo pipefail

PY=python3.12     # match Vercel's Python (based on your logs)

# Optional pip upgrade
$PY -m pip install --upgrade pip

# Install requirements (safe/idempotent)
$PY -m pip install -r requirements.txt

# Run migrations & collect static files
$PY manage.py migrate --noinput
$PY manage.py collectstatic --noinput --clear

echo "Build script finished"
