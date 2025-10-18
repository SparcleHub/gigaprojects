**Задание 1. Настраиваем SAST-сканирование в GitLab CI/CD**

1\. Включите SAST B.gitlab-ci.yml, используя шаблон GitLab.  
![8524915a6b99307a13dcb018410301e0.png](../../../_resources/8524915a6b99307a13dcb018410301e0.png)

2\. Закоммитьте и запушьте изменения.  
3\. Запустите пайплайн и дождитесь выполнения SAST.  
![721b58b4760a2fc662a19fa910c1d78c.png](../../../_resources/721b58b4760a2fc662a19fa910c1d78c.png)

4\. Перейдите в Build → Artifacts, найдите артефакты джоба SAST и скачайте gl-sast-report.json.  
![c48b8172315f1e8e5caa2e071be79039.png](../../../_resources/c48b8172315f1e8e5caa2e071be79039.png)  
<br/>

5\. Проанализируйте отчет.  
![e119f148c620eb21001bf06c9cfdceb0.png](../../../_resources/e119f148c620eb21001bf06c9cfdceb0.png)  
![6cf8c30ed2554aef0f346015e7e672f8.png](../../../_resources/6cf8c30ed2554aef0f346015e7e672f8.png)  
![90350ab23c1a00fedb446a5bd131e55e.png](../../../_resources/90350ab23c1a00fedb446a5bd131e55e.png)

Конечный результат: Автоматическое SAST-сканирование кода при каждом коммите, отчет с уязвимостями доступен в разделе с артефактами.