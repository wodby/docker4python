#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

python manage.py flush --no-input
python manage.py migrate
python manage.py collectstatic --no-input
python manage.py test

if [[ "${PYTHON_VERSION}" == 2* ]]; then
    django_msg="It worked!"
else
    django_msg="Get started with Django"
fi

curl -s localhost:8080 | grep -q "${django_msg}"
curl -sH "Host: localhost" nginx | grep -q "${django_msg}"
curl -sIH "Host: localhost" nginx/static/admin/css/base.css | grep -q "200 OK"
