#!/bin/bash
set -euo pipefail

# Use explicit python executable that matches the environment in Vercel logs
PY=python3.12

# Upgrade pip (optional but useful)
$PY -m pip install --upgrade pip

# Install dependencies explicitly (safe even if Vercel already installs them)
$PY -m pip install -r requirements.txt

# Run migrations and collectstatic
$PY manage.py migrate --noinput
$PY manage.py collectstatic --noinput --clear

echo "Build script finished successfully"
