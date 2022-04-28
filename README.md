Установить gems
bundle install

Установить пакеты Yarn
yarn 

В отдельном окне терминала запустить команду
bin/webpack-dev-server

Панель администратора
http://localhost:3000/admin 

Docker 
Чтобы запустить проект в Docker нужно выплонить следвющие команды
Сборка проекта:
docker-compose build

Запуск проекта: 
docker-compose up

Остановить котейнер
docker-compose down

Для создание пользователя администратора нужно выполнить следующие команды:

docker ps - выводит список запущенных контейнеров

docker exec -it "CONTAINER_ID" /bin/bash - вместо CONTAINER_ID вставить ID запущенного конейнера

rails db:seed - создаст профиль администратора

http://localhost:3000/admin - 