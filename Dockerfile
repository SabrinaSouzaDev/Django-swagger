FROM python

ENV PYTHONUNBUFFERED 1

WORKDIR /core

COPY requirements.txt /core/

RUN pip install -r requirements.txt

COPY ./api .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
