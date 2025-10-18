**Задание 1. Написание и оптимизация Dockerfile для веб-приложения на Flask**

1\. **Используйте следующее простое приложение на Flask**:

\# app.py

```
from flask import Flask
app = Flask(__name__)
@app.route("/")
def home():
    return "Hello, Flask in Docker!"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

2\. **Напишите Dockerfile**:

\-Используйте базовый образ python:3.9-slim.  
\-Скопируйте приложение в контейнер.  
\-Установите Flask как зависимость.  
\-Настройте запуск приложения при старте контейнера.  
![c74e3d74ab1d0acda4d408d1e7899b18.png](../../../_resources/c74e3d74ab1d0acda4d408d1e7899b18.png)  
![b3be3ce63b9d9e205e3048bd53494030.png](../../../_resources/b3be3ce63b9d9e205e3048bd53494030.png)  
![e2ef4d5e4dca19c24964ce4ef1635d27.png](../../../_resources/e2ef4d5e4dca19c24964ce4ef1635d27.png)  
<br/>

3\. **Оптимизируйте Dockerfile**:

\-Уменьшите размер образа, используя более лёгкий базовый образ (например, python:3.9-alpine).  
\-Убедитесь, что в образе не остаётся лишних файлов, включая кеши.  
![4c99dfa62e707362f62bd35e7005ba3c.png](../../../_resources/4c99dfa62e707362f62bd35e7005ba3c.png)  
![fb848cd4900a1b84cf6b96d59f923801.png](../../../_resources/fb848cd4900a1b84cf6b96d59f923801.png)  
![b743b24888f94e44617fde7973907c5b.png](../../../_resources/b743b24888f94e44617fde7973907c5b.png)

**Конечный результат**: Dockerfile, который позволяет собрать минимальный работающий образ для Flask-приложения. Приложение корректно запускается и возвращает сообщение "Hello, Flask in Docker!".