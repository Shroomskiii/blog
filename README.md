Установить gems
bundle install

Установить пакеты Yarn командой:
yarn 

В отдельном окне терминала запустить команду:
bin/webpack-dev-server

Перед запуском сервера:
В папке  "config" В файле database.yaml указать:
host: localhost

Запустить сервер  командой:
rails s

Панель администратора
http://localhost:3000/admin 

Docker 
Чтобы запустить проект в Docker нужно выплонить следвющие команды
В папке "config" В файле database.yaml указать:
host: db

Сборка проекта:
docker-compose build

Запуск проекта: 
docker-compose up

Остановить котейнер
docker-compose down

Для создание пользователя администратора нужно выполнить следующие команды:

docker ps - выводит список запущенных контейнеров

docker exec -it "CONTAINER_ID" /bin/bash - вместо CONTAINER_ID вставить ID запущенного конейнера

rails db:seed - создаст профиль администратора:
email: 'admin@example.com', password: 'password'
http://localhost:3000/admin