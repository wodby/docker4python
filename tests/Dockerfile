ARG PYTHON_TAG

FROM wodby/python:${PYTHON_TAG}

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN django-admin startproject mysite .

COPY settings-additions.py /tmp
RUN cat /tmp/settings-additions.py >> mysite/settings.py

ENV GUNICORN_APP mysite.wsgi:application
CMD ["sudo", "-E", "/etc/init.d/gunicorn"]
