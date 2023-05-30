FROM python

WORKDIR /app

COPY . /app

ENV POSTGRES_DB=library_db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_HOST=localhost
ENV POSTGRES_PORT=5432

RUN python3 -m venv env

RUN . env/bin/activate

RUN pip install -r requirements.txt

RUN python manage.py makemigrations

RUN python manage.py migrate

RUN python manage.py runserver 0.0.0.0:8000

EXPOSE 8000