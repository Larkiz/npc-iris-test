## Как установить

### 1. База данных

Вставить исходный код в бд PostgreSQL из файла init.db.sql

### 2. Сервер

В терминале каталога сервера прописать `npm install`

В корне сервера создать .env и прописать параметры бд:

```
user = postgres

password = root

host = localhost

port = 5432
```

database = organization

Запустить:

`npm start`

Маршруты Api:

- [APIROUTES.MD](https://github.com/Larkiz/npc-iris-test/blob/master/APIROUTES.md)

### 3. Клиент

В терминале каталога клиента прописать `npm install`

Запустить:

`npm start`

## Описание

Потрачено на задание 20-25 часов

Для серверное части написал абстрактную модель бд с базовыми операциями(GET,POST, PUT,DELETE), для уменьшения повторяющегося кода

Самой долгой и сложной частью - была клиентская
