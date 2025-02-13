FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./api ./api
COPY ./core ./core
COPY main.py .

EXPOSE 8080

CMD [ "uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080" ]

