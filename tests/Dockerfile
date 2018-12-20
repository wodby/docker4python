ARG PYTHON_TAG

FROM wodby/python:${PYTHON_TAG}

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN django-admin startproject myapp .

COPY settings-additions.py /tmp/
RUN cat /tmp/settings-additions.py >> myapp/settings.py

ENV GUNICORN_APP myapp.wsgi:application
CMD ["/etc/init.d/gunicorn"]
