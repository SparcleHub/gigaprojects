**Задание 1:**

1\. Опиши переменную filename и content.  
![67311816819ab25c9834f05337e64349.png](../../../_resources/67311816819ab25c9834f05337e64349.png)

2\. Используй local для создания полного пути до файла.  
<br/>![167887b2587c1983ba01ecb3555e264b.png](../../../_resources/167887b2587c1983ba01ecb3555e264b.png)

3\. Создай файл через local_file.  
<br/>![3614e7c3ce51c5eb241c503335f07417.png](../../../_resources/3614e7c3ce51c5eb241c503335f07417.png)

4\. Верни путь к файлу в output.

**![82f508628c69c9d3178d29bc7f788953.png](../../../_resources/82f508628c69c9d3178d29bc7f788953.png)**

&nbsp;

**Задание 2**:

1\. Используй переменную map с ключами — именами файлов, значениями — содержимым.  
<br/>![264f3cb1cf6db1843ca85e5ec757aceb.png](../../../_resources/264f3cb1cf6db1843ca85e5ec757aceb.png)  
![5bca8cc009d5a84a50ce4c08260a4a9f.png](../../../_resources/5bca8cc009d5a84a50ce4c08260a4a9f.png)  
<br/>

2\. Через for_each создай файл на каждый элемент.

**![dd80b81563390a1bcc04851f106ded6d.png](../../../_resources/dd80b81563390a1bcc04851f106ded6d.png)**

![25f1f9096ed7f501697032e69b6a063c.png](../../../_resources/25f1f9096ed7f501697032e69b6a063c.png)  
<br/>

&nbsp;

**Задание 3:**

1\. Сформируй список строк, объединённый через join.  
<br/>![d7e1267b1bd7ea40cc0859c62e2b34e1.png](../../../_resources/d7e1267b1bd7ea40cc0859c62e2b34e1.png)  
![5964defd6e92b7595551d970661eae48.png](../../../_resources/5964defd6e92b7595551d970661eae48.png)

2\. Преобразуй результат в верхний регистр и запиши в файл.  
<br/>![7d6f9fe5cc6476c6c14e0ee8c9f4a2c3.png](../../../_resources/7d6f9fe5cc6476c6c14e0ee8c9f4a2c3.png)

3\. Верни содержимое в output.  
<br/>![98fe8750fca7d8054e51de56dae039fb.png](../../../_resources/98fe8750fca7d8054e51de56dae039fb.png)

**![2fd4bca44c7152a893168d19e4e0aeeb.png](../../../_resources/2fd4bca44c7152a893168d19e4e0aeeb.png)  
<br/>**

**Задание 4:**

1\. Прочитать подготовку для работы с Yandex Cloud.  
2\. Создать проект со структурой:

- provider.tf  
    <br/>![5571e56d1b37208cb1f62737834209a4.png](../../../_resources/5571e56d1b37208cb1f62737834209a4.png)  
    <br/>
- variables.tf  
    <br/>![aac9e47f9422dcdb1bb3916bcc7ad47b.png](../../../_resources/aac9e47f9422dcdb1bb3916bcc7ad47b.png)  
    <br/>
- main.tf  
    <br/>![965ad4311bbda6d40494a3765f1a436f.png](../../../_resources/965ad4311bbda6d40494a3765f1a436f.png)  
    meta.txt:  
    ![b5191f5ff866ccd0503e5fe3a3429852.png](../../../_resources/b5191f5ff866ccd0503e5fe3a3429852.png)  
    <br/>
- terraform.tfvars  
    <br/>![ba720b834c953c2539ca2ae5555d589c.png](../../../_resources/ba720b834c953c2539ca2ae5555d589c.png)  
    <br/>

3\. Получить токен для работы с сервисным аккаунтом облака.  
4\. C помощью провайдера yandex развернуть виртуальную машину с помощью ресурса yandex_compute_instance.  
5\. Настроить авторизацию для виртуальной машины по ssh c использованием cloud-init https://yandex.cloud/ru/docs/compute/operations/vm-create/create-with-cloud-init-scripts

6\. Авторизоваться на хосте по ssh ключу.  
![b69613236b7f0482a7dcb8f9aaed8737.png](../../../_resources/b69613236b7f0482a7dcb8f9aaed8737.png)  
![14592e8d5f910418c0952ef3e702a1e1.png](../../../_resources/14592e8d5f910418c0952ef3e702a1e1.png)

7\. После выполнения задания удалить вм.  
<br/>![6dc6b45168a7114bc7693c02cf80439c.png](../../../_resources/6dc6b45168a7114bc7693c02cf80439c.png)