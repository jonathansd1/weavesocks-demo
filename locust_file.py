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
    def cart(self):
        self.client.get("/basket.html")

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait = 5000
    max_wait = 7000
