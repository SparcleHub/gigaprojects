**Задание 1. Установка Redis**

\-На Linux-сервере установите Redis с помощью пакетного менеджера. Пример для Ubuntu:  
sudo apt update  
sudo apt install redis-server  
\-Запустите Redis и убедитесь, что сервис работает корректно:  
sudo systemctl start redis-server  
sudo systemctl status redis-server  
![70177414827ee3dfb2594f83ce18a802.png](../../_resources/70177414827ee3dfb2594f83ce18a802.png)

\-Подключитесь к Redis-клиенту и выполните несколько команд (PING, SET, GET), чтобы проверить, что база данных функционирует:  
redis-cli  
\> PING  
\> SET example "Hello, Redis!"  
\> GET example  
![ea9888eebbee1a12aa021536cb564e6e.png](../../_resources/ea9888eebbee1a12aa021536cb564e6e.png)  
<br/>

**Задание 2. Настройка конфигураций Redis**

Изучите конфигурационный файл Redis (/etc/redis/redis.conf) и внесите изменения для повышения безопасности  
\-Ограничьте доступ к Redis только для localhost, изменив параметр bind:  
bind 127.0.0.1  
![5b520ea6bd3bb9ce5ac121b1ee91a595.png](../../_resources/5b520ea6bd3bb9ce5ac121b1ee91a595.png)  
<br/>\-Установите пароль для подключения к Redis, добавив параметр requirepass:  
requirepass yourpassword  
\-Перезапустите Redis для применения изменений:  
sudo systemctl restart redis-server  
<br/>

**Задание 3. Работа с базами данных**

Используйте несколько баз данных Redis, переключаясь между ними с помощью команды SELECT. Вставьте данные в разные базы данных и убедитесь, что данные из одной базы недоступны в другой  
SELECT 0  
SET key1 "Value in DB 0"  
SELECT 1  
GET key1  
![279b08553d78e3cbff65d0bb50f57c95.png](../../_resources/279b08553d78e3cbff65d0bb50f57c95.png)  
<br/>

**Задание 4. Кэширование данных**

\-Попробуйте использовать Redis для кэширования: создайте ключи с временным сроком действия (TTL). Установите ключ с временем жизни в 60 секунд и убедитесь, что по истечении времени он удаляется  
SET temp_key "Temporary Data" EX 60  
GET temp_key  
\-Используйте команду TTL, чтобы проверить оставшееся время жизни ключа.  
![99934edce862d397af1344ec9d9584a0.png](../../_resources/99934edce862d397af1344ec9d9584a0.png)  
<br/>

**Задание 5. Хранение данных в различных структурах**

Создайте ключи, используя различные структуры данных Redis  
\-Список. Добавьте несколько элементов и извлеките их.  
RPUSH mylist "element1" "element2" "element3"  
LRANGE mylist 0 -1  
![0a703e31e61a6590feda271e3c3f406e.png](../../_resources/0a703e31e61a6590feda271e3c3f406e.png)  
\-Множество. Добавьте элементы и проверьте уникальность.  
SADD myset "item1" "item2" "item1"  
SMEMBERS myset  
![ac6ca9be03ed06e51cda91ca21f746e7.png](../../_resources/ac6ca9be03ed06e51cda91ca21f746e7.png)

\-Хеш. Сохраните и извлеките данные как в JSON-структуре.  
HSET user:1000 name "Alice" age "30"  
HGETALL user:1000  
![4c77947b90d2256a12929e909a25234e.png](../../_resources/4c77947b90d2256a12929e909a25234e.png)  
<br/>

**Задание 6.Команда INFO**

Используйте команду INFO для получения статистики по ключевым параметрам Redis, таким как использование памяти и количество подключений. Проверьте секции Memory, Clients и Persistence.  
INFO Memory  
![ef03a8564e6fc74c1059da5c9c3d95f0.png](../../_resources/ef03a8564e6fc74c1059da5c9c3d95f0.png)  
INFO Clients  
![3a96a9844a3451dfafd81657f9c6b250.png](../../_resources/3a96a9844a3451dfafd81657f9c6b250.png)  
INFO Persistence  
![2b9ef5c09947e381fa2ac0e47ede9fae.png](../../_resources/2b9ef5c09947e381fa2ac0e47ede9fae.png)  
<br/>

**Задание 7. Проверка эффективности**

\-Установите ограничение на память с параметром maxmemory и выберите eviction-политику в конфигурационном файле redis.conf. После перезапуска Redis вставьте данные, пока не будет достигнут лимит памяти, и проверьте, как происходит удаление старых ключей.  
\-Используйте команды для мониторинга использования памяти:  
CONFIG SET maxmemory 100mb  
CONFIG SET maxmemory-policy allkeys-lru  
![dda21a1b6dfd8799183f9b96abf0f3a6.png](../../_resources/dda21a1b6dfd8799183f9b96abf0f3a6.png)

\-Проверьте, как используется память до и после удаления данных, с помощью команды MEMORY USAGE.  
![d478663fc836b3a5c7d82485afbab12f.png](../../_resources/d478663fc836b3a5c7d82485afbab12f.png)  
![111456718aa69190018e4e70f6220b1b.png](../../_resources/111456718aa69190018e4e70f6220b1b.png)  
<br/>

**Задание 8. Резервирование данных**

\-Настройте резервное копирование данных с помощью режима RDB, который автоматически создает снапшоты. Измените параметры в redis.conf для настройки интервала бэкапов и проверьте, где создаются резервные файлы.  
![f77bbb4c2bc619c2d89ae87c156b264e.png](../../_resources/f77bbb4c2bc619c2d89ae87c156b264e.png)

\-Проверьте, что данные сохраняются на диск, после чего остановите и перезапустите Redis. Убедитесь, что данные восстанавливаются после перезапуска.  
![02c8a47d24dbb5073e32987cbe4311e5.png](../../_resources/02c8a47d24dbb5073e32987cbe4311e5.png)  
![de757cfd18c1e4fd3c0364e569c2690e.png](../../_resources/de757cfd18c1e4fd3c0364e569c2690e.png)