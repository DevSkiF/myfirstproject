# myfirstproject

В этом проекте я выполнял тестовое задание на вакансию DevOps-инженера.
В нем было необходимо:
 1. Подготовить Dockerfile приложения
 2. Настроить CI/CD в GitLab:
   - код проекта на GitLab.com,
   - выбран тип docker executor для GitLab Runner,
   - настроены этапы ci/cd: сборка и деплой приложения в кластер Kubernetes (локально можно
     использовать, например, Kind).

Так же дополниетльные условия:
1. Ссылку на репозиторий в gitlab.com (или архив с решением).
2. Вывод команды kubectl get pods -A после деплоя приложения.
3. Вывод команды kubectl get deploy -A . Приложение должно быть развернуто в Kubernetes с
использованием Deployment и опубликовано с помощью LoadBalancer или NodePort.
4. Ответ на запрос к <url^:<port> , который содержит вывод сообщения “Привет, это тест!”.

Minikube запускал следующим образом:
```bash
minikube start --driver=docker --container-runtime=docker
```

Конфиг-файл gitlab-runner так же приложен в проекте.