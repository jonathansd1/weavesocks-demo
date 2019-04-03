from locust import HttpLocust, TaskSet, task
import random

class UserBehavior(TaskSet):
    @task(2)
    def index(self):
        self.client.get("/index.html")

    @task(2)
    def catalogue(self):
        self.client.get("/category.html")

    @task(1)
    def filter(self):
        self.client.get("/category.html?tags=geek")

    @task(1)
    def detail(self):
        self.client.get("/detail.html?id=6d62d909-f957-430e-8689-b5129c0bb75e")

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait = 1000
    max_wait = 3000
