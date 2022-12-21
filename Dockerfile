FROM mysql:8
FROM python:3.9

WORKDIR /student_management
ADD . /student_management/
RUN pip install mysql-connector-python
RUN pip install -r requirements.txt
CMD ["python","main.py"]

ENV MYSQL_ROOT_PASSWORD pass
COPY ./data.sql /docker-entrypoint-initdb.d/data.sql
