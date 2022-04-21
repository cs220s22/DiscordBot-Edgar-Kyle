FROM python:3

COPY requirements.txt .
COPY .env .

RUN python3 -m venv .venv
RUN .venv/bin/pip install -r requirements.txt

COPY bot.py .

CMD [".venv/bin/python3", "bot.py"]
