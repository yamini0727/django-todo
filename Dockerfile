FROM python:3.10.11-alpine3.16              
WORKDIR  /peliqan                     
COPY manage.py /peliqan 
RUN pip install Django==4.2 && pip install psycopg2-binary 
COPY . /peliqan    
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000                                                              
