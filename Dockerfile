FROM python:3.9-alpine

RUN adduser -D chirp

WORKDIR /home/chirp

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn pymysql

COPY app app
COPY migrations migrations
COPY chirp.py config.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP chirp.py

RUN chown -R chirp:chirp ./
USER chirp

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
