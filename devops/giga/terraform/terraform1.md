**Задание 1**:

1\. Напиши Terraform-конфигурацию, которая создаёт файл hello.txt. Используй local_file ресурс  
2\. В файл должно быть записано: Hello from Terraform!  
![935406bcb6898721c176cc6d868f9443.png](../../../_resources/935406bcb6898721c176cc6d868f9443.png)

3\. Проинициализировать проект через terraform init, посмотреть вывод.

* * *

![a1b2c7620109d668f694dcde6bbea23d.png](../../../_resources/a1b2c7620109d668f694dcde6bbea23d.png)

4\. Проверить и применить конфигурацию с помощью команд terraform plan, terraform apply и убедиться, что файл создан.

* * *

![be6adaca86ab6e8369f45de4a68c628a.png](../../../_resources/be6adaca86ab6e8369f45de4a68c628a.png)

![45e8236ce408ceb07717c6d395b3b423.png](../../../_resources/45e8236ce408ceb07717c6d395b3b423.png)  
<br/>5\. Измени текст в файле на Terraform updated content! и повторно примени изменения.  
6\. Применить terraform init  
<br/>![6ee1a3871f50af748cfd4782d6d875a1.png](../../../_resources/6ee1a3871f50af748cfd4782d6d875a1.png)  
<br/>

**Задание 2**:

1\. В рамках одного конфигурационного файла опиши два ресурса local_file.  
2\. Первый должен создать файл first.txt с содержимым First file from Terraform.  
3\. Второй должен создать файл second.txt с содержимым Second file from Terraform.  
4\. Применить конфигурацию и убедиться, что оба файла созданы.  
<br/>![29b93efe4974b0b22c8382a0af5f5323.png](../../../_resources/29b93efe4974b0b22c8382a0af5f5323.png)

5\. Отформатируй конфигурацию с помощью команды terraform fmt.  
![6126e47f4421dc1ce5beabb9bbffd835.png](../../../_resources/6126e47f4421dc1ce5beabb9bbffd835.png)