echo "Current directory: $(pwd)"
ls -la
python --version
pip --version
python -m pip install -r requirements.txt
python manage.py collectstatic --noinput
