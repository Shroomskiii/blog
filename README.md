Установить gems
bundle install

Установить пакеты Yarn командой:
yarn 


Docker 
Чтобы запустить проект в Docker нужно выплонить следующие команды
sudo docker-compose up --build

В папке "config" В файле database.yaml указать:
host: db

Остановить котейнер
docker-compose down

Для создание пользователя администратора нужно выполнить следующие команды:

docker ps - выводит список запущенных контейнеров

docker exec -it "CONTAINER_ID" /bin/bash - вместо CONTAINER_ID вставить ID запущенного конейнера

rails db:seed - создаст профиль администратора:
email: 'admin@example.com', password: 'password'

Панель администратора:
http://localhost:3000/admin 
