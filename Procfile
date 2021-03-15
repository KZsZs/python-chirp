web: flask db upgrade; flask translate compile; gunicorn chirp:app
worker: rq worker chirp-tasks
