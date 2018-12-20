ARG PYTHON_TAG

FROM wodby/python:${PYTHON_TAG}

RUN pip install --upgrade pip
#RUN pip install pipenv

COPY requirements.txt ./

#COPY Pipfile Pipfile.lock ./

# Install additional dev packages for native extensions (only for -dev python tag)
#RUN sudo apk add --update missing-package

RUN pip install -r requirements.txt
#RUN pipenv install --skip-lock --system --dev

# By default we start Gunicorn server, modify to change it.
#ENV GUNICORN_PYTHONPATH subdir
ENV GUNICORN_APP myapp.wsgi:application
CMD ["/etc/init.d/gunicorn"]
