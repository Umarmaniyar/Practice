FROM python3.10-slim

WORKDIR /app

COPY requirements.txt
RUN pip installl --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000


CMD ["python", "app.py"]