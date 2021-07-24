FROM python:stretch

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]