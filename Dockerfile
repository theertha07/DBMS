FROM python:3.6.1-alpine
WORKDIR /student_management
ADD . /student_management/
RUN pip install mysql-connector-python
RUN pip install -r requirements.txt
CMD ["python","main.py"]
