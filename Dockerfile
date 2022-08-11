FROM python:3.8
RUN echo "Docker building Django application"
COPY ./stocks_products /stocks_products
WORKDIR /stocks_products
RUN pip install -r /stocks_products/requirements.txt
RUN python3 /stocks_products/manage.py makemigration
RUN python3 /stocks_products/manage.py migrate
CMD ["python3", "/stocks_products/manage.py", "runserver"]