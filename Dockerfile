FROM python:3.9
RUN echo "Docker building Django application"
COPY ./stock_products /stock_products
WORKDIR /stock_products
RUN pip install -r /stock_products/requirements.txt
RUN python3 /stock_products/manage.py makemigration
RUN python3 /stock_products/manage.py migrate
CMD ["python3", "/stock_products/manage.py", "runserver"]