**1\. Создайте веб-приложение на Flask:**

\-В папке проекта создайте директорию app и внутри неё файл app.py со следующим кодом:  
\# app.py

```python
from flask import Flask
import psycopg2
app = Flask(__name__)
@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            dbname="mydatabase", # Замените на имя БД из docker-compose.yml
            user="user", # Замените на пользователя из docker-compose.yml
            password="password", # Замените на пароль из docker-compose.yml
            host="db" # Замените на имя сервиса базы данных из docker-compose.yml
        )

        conn.close()
        return "Connected to the database successfully!"
    except Exception as e:
        return f"Error: {e}"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

В той же папке создайте файл requirements.txt:  
flask  
psycopg2-binary  
![15d39bcb2c877d5757fd6a3e1b4a1a9d.png](../../../_resources/15d39bcb2c877d5757fd6a3e1b4a1a9d.png)

**2\. Создайте docker-compose.yml:**

\-В корне проекта создайте файл docker-compose.yml для настройки двух сервисов: Flask-приложения и базы данных PostgreSQL.  
Укажите параметры подключения к базе данных (POSTGRES_USER, POSTGRES_PASSWORD, POSTGRES_DB).  
![114d0db35e7a39ae6345e94484b7ba7e.png](../../../_resources/114d0db35e7a39ae6345e94484b7ba7e.png)

**3\. Запустите проект через Docker Compose**:

\-Соберите и запустите контейнеры:  
docker-compose up -d  
\-Убедитесь, что Flask-приложение запущено и слушает на порту 5000.  
![df87ee57b697f14d5a27b7588dc15204.png](../../../_resources/df87ee57b697f14d5a27b7588dc15204.png)

**4\. Проверьте работу приложения:**

\-Перейдите в браузере по адресу http://localhost:5000.  
\-Убедитесь, что приложение подключается к базе данных и отображает сообщение о статусе соединения.  
![63c8c5fa975e3c6ae4952717945c7542.png](../../../_resources/63c8c5fa975e3c6ae4952717945c7542.png)

**Конечный результат:**

\-Flask-приложение работает в одном контейнере и успешно взаимодействует с PostgreSQL в другом.  
\-Данные базы сохраняются между перезапусками благодаря настройке тома.