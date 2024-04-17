# Маршруты сервера

### host = localhost
### route = employees || shops

## Get

##### {host}/api/route?

Params:
offset=integer
Если не указать offset, то вывод будет всей таблицы

## post

##### {host}/api/route

Body:

###### Для route = shops

address: Varchar
budget: Numeric
employees_number: Integer
opening_date: Date

###### Для route = employees

name: Varchar
salary: Numeric
employment_date: Date
shop_id: Integer

## Put

##### {host}/api/route/{id}

Body:
Поля для изменения

## delete

##### {delete}/api/route/{id}
