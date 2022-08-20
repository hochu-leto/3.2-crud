FROM python:3.8
RUN echo "Docker building Django application"
COPY ./stocks_products /stocks_products
WORKDIR /stocks_products
RUN pip install -r /stocks_products/requirements.txt
RUN python3 /stocks_products/manage.py makemigrations
RUN python3 /stocks_products/manage.py migrate

CMD ["python", "/stocks_products/manage.py", "runserver", "0.0.0.0:8000"]
