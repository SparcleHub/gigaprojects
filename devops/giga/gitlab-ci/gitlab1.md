**Создаём тестовый GitLab-репозиторий**

1\. Зарегистрируйтесь на GitLab https://about.gitlab.com/  
2\. Создайте новый репозиторий:  
\-Дайте ему название (например, devops-practice).  
\-Добавьте описание, чтобы объяснить его цель.  
\-Инициализируйте репозиторий с файлом README.md.  
![fbd3fee693555a0d03539a846d9ca19b.png](../../../_resources/fbd3fee693555a0d03539a846d9ca19b.png)

3\. Настройте локальный доступ:

\-Установите Git (если он еще не установлен).  
\-Клонируйте репозиторий на локальную машину с помощью команды:  
git clone https://gitlab.com/your-username/devops-practice.git  
\-Перейдите в каталог репозитория и создайте новый файл:  
cd devops-practice  
echo "# DevOps Practice Repository" > README.md  
\-Закоммитьте и отправьте изменения в репозиторий:  
git add .  
git commit -m "Initial commit"  
git push origin main  
![aa0aad097157e5f6d48a8e97e6d6a908.png](../../../_resources/aa0aad097157e5f6d48a8e97e6d6a908.png)

**Конечный результат:** У вас должен быть настроенный GitLab-репозиторий, доступный локально и в облаке, с возможностью коммитить и пушить изменения.  
![4c5844bfdc18bd3241b7ee56150771c2.png](../../../_resources/4c5844bfdc18bd3241b7ee56150771c2.png)