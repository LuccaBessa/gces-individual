python3 -m venv env

pip install -r requirements.txt

python manage.py makemigrations

python manage.py migrate

python manage.py runserver