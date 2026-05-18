FROM python:3.13-slim

WORKDIR /app

COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ ./
EXPOSE 5000

RUN useradd app
USER app

CMD [ "python", "run.py" ]