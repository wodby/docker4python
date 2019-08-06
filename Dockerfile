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

# We assume your project name is "myapp".
ENV GUNICORN_APP myapp.wsgi:application
# By default we start Gunicorn server, modify to change it.
# If your project is in a subdirectory.
#ENV GUNICORN_PYTHONPATH subdir
CMD ["/etc/init.d/gunicorn"]
