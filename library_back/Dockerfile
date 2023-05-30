FROM python

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN python manage.py makemigrations

RUN python manage.py migrate

RUN python manage.py runserver 0.0.0.0:8000

EXPOSE 8000