FROM python:3.11-slim
WORKDIR /app
COPY ./app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./app/ .
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--log-level", "debug", "api:app"].