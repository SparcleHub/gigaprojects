**Задание 1:**

На основе практического задания из предыдущей части требуется реализовать модуль для создания виртуальной машины.  
Модуль должен принимать в качестве переменных:

- Название вм
- Ресурсы (цпу, память, диск)
- Сетевые настройки
- Настройки для авторизации пользователей

1\. Реализовать модуль vm_module с указанными вводными.  
<br/>![5609e63942e0da3f0525a7cd8eaa6f31.png](../../../_resources/5609e63942e0da3f0525a7cd8eaa6f31.png)  
<br/>main.tf  
![95ad3a2f7863610c4c5fce3e245dbdf8.png](../../../_resources/95ad3a2f7863610c4c5fce3e245dbdf8.png)  
<br/>meta.txt  
![cf5966b28eb9bfeab0b598d0039e9c62.png](../../../_resources/cf5966b28eb9bfeab0b598d0039e9c62.png)  
<br/>output.tf  
![918db6aa9019c9cac16a2e1c12c05bea.png](../../../_resources/918db6aa9019c9cac16a2e1c12c05bea.png)  
<br/>provider.tf  
![265c6d837b6a28976ab3b017c50945d3.png](../../../_resources/265c6d837b6a28976ab3b017c50945d3.png)  
<br/>variables.tf  
![d896422e9477141b9b24cc5d41979ac9.png](../../../_resources/d896422e9477141b9b24cc5d41979ac9.png)  
<br/>modules/main.tf  
![a56f0df44cd48663be4d7b3c86250ac6.png](../../../_resources/a56f0df44cd48663be4d7b3c86250ac6.png)  
<br/>modules/output.tf  
![91308a4ece62d45dca18315df169f405.png](../../../_resources/91308a4ece62d45dca18315df169f405.png)  
<br/>modules/variables.tf  
![b8dfbec32882b43d774a108908b9834a.png](../../../_resources/b8dfbec32882b43d774a108908b9834a.png)  
![2d4822a347a9829be9c7abeb545419a5.png](../../../_resources/2d4822a347a9829be9c7abeb545419a5.png)  
<br/>modules/versions.tf  
![511df973932ccfb0685c50f3f987f891.png](../../../_resources/511df973932ccfb0685c50f3f987f891.png)  
<br/><br/>

2\. Создать в проекте 2 виртуальные машины с помощью модуля.  
<br/>![10412cb38c598bccd33466e44fed228e.png](../../../_resources/10412cb38c598bccd33466e44fed228e.png)  
![dcb85973345bc53716e67633b92cb83f.png](../../../_resources/dcb85973345bc53716e67633b92cb83f.png)  
<br/><br/>![5ecc5f699f5466abe18adea6c01a0100.png](../../../_resources/5ecc5f699f5466abe18adea6c01a0100.png)  
![713f44b84ca4f8964f65c50d15deebbd.png](../../../_resources/713f44b84ca4f8964f65c50d15deebbd.png)  
<br/>

3\. Внести изменение в модуль (захардкодить значение цпу или памяти), применить изменную конфигурацию, посмотреть на вывод терраформа.  
<br/>![0cc8ecef0704359b5cd14bf1c81e26fe.png](../../../_resources/0cc8ecef0704359b5cd14bf1c81e26fe.png)  
![0607b18f57928565e16e9badd051e308.png](../../../_resources/0607b18f57928565e16e9badd051e308.png)  
![25436f80da0d5db1ce64a6799201f7f8.png](../../../_resources/25436f80da0d5db1ce64a6799201f7f8.png)  
<br/>

4\. Удалить вм, вынести модуль в отдельный гит репозиторий, в исходном проекте поменять источник модуля на репозиторий. Применить конфигурацию заново.  
![f1680cde93cacdf9ea3b808901a69801.png](../../../_resources/f1680cde93cacdf9ea3b808901a69801.png)  
<br/>main.tf  
![e9ee7d5d3b7d8399a27d422c597a5583.png](../../../_resources/e9ee7d5d3b7d8399a27d422c597a5583.png)  
<br/>![0b04178770d81ce86a5197ac8a8e5b89.png](../../../_resources/0b04178770d81ce86a5197ac8a8e5b89.png)  
<br/>![96faca2c50edea5330959167aad555a3.png](../../../_resources/96faca2c50edea5330959167aad555a3.png)  
<br/>![daf074b9162a26c3f624d2e21c3f21f4.png](../../../_resources/daf074b9162a26c3f624d2e21c3f21f4.png)

5\. После окончания работы, удалить вм.