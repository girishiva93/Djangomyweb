from django.db import models
# from datetime import datetime


class About(models.Model):
    name = models.CharField(max_length=200)
    profile = models.CharField(max_length=200)
    email = models.CharField(max_length=250)
    phone = models.CharField(max_length=20)
    description = models.TextField(blank=True)
    descriptionI = models.TextField(blank=True)
    descriptionII = models.TextField(blank=True)
    photo = models.ImageField(upload_to='photo/%Y/%m/%d')
    download = models.ImageField(upload_to='photo', blank=True)

    def __str__(self):
        return self.name
