FROM python:3.12-slim-bookworm

WORKDIR /code
COPY requirements.lock ./
RUN PYTHONDONTWRITEBYTECODE=1 pip install --no-cache-dir -r requirements.lock

COPY ./app /code/app
CMD ["fastapi", "run", "app/main.py", "--port", "80"]
EXPOSE 80/tcp
