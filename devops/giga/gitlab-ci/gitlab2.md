**Задание 1. Запуск и анализ GitLab CI/CD пайплайна**

1\. Используйте ранее созданный репозиторий в GitLab и загрузите в него следующий .gitlab-ci.yml файл:  
<br/>stages:  
 - build  
 - test  
 - deploy

build:  
 stage: build  
 script:  
  - mkdir -p build  
  - echo "This is a test artifact" > build/artifact.txt  
  - ls -la build/  
 artifacts:  
  paths:  
   - build/

test:  
 stage: test  
 script:  
  - echo "Running tests..."

deploy:  
 stage: deploy  
  script:  
   - echo "Deploying the application..."

2\. Закоммитьте и запушьте изменения в репозиторий.  
3\. Перейдите в **Build** -> **Pipelines** в GitLab и убедитесь, что пайплайн запущен.![a98e3c87af37393ce2c7ed0e798747f7.png](../../../_resources/a98e3c87af37393ce2c7ed0e798747f7.png)

4\. Дождитесь завершения всех стадий и просмотрите логи выполнения каждого шага.  
![509850a86e6c917c089b520a82a5cca4.png](../../../_resources/509850a86e6c917c089b520a82a5cca4.png)

**Задание 2. Проверка артефактов**

После успешного выполнения пайплайна перейдите в раздел **Build -> Jobs.  
**Откройте последний успешно выполненный build-job.  
Найдите раздел Artifacts и скачайте созданный артефакт.  
Распакуйте загруженный архив и убедитесь, что в нем содержится файл artifact.txt.  
Откройте этот файл и убедитесь, что в нем записано This is a test artifact.  
![41b76c705e35a4736a4ee35f9f880f7a.png](../../../_resources/41b76c705e35a4736a4ee35f9f880f7a.png)

**Конечный результат**: Успешно запущенный пайплайн, сформированный артефакт и проверенный его содержимое.