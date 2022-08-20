# Docker

Создание контейнера для REST API сервера для проекта из курса по Django ( CRUD: Склады и запасы).
[Склады и товары](./stocks_products)

Для создания image следует перейти в папку  и запустить команду 
* cd ~/3.2-crud
* docker build --tag=my_django_crud .

После этого запустить новый контейнер
*  docker run --name=my_crud -d -p 8000:8000 my_django_crud

Далее следует перейти по адесу 

localhost:8000 

и наслаждаться фантастическим api для складов и продуктов