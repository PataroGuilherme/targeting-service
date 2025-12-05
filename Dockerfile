FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV DB_HOST=targeting-db
ENV DB_PORT=5432
ENV DB_USER=postgres
ENV DB_PASS=postgres
ENV DB_NAME=targetingdb

EXPOSE 8000 8080 80 443

CMD ["python", "app.py"]
