from django.db import models

# Create your models here.


class service (models.Model):
    title = models.CharField(max_length=250)
    header = models.CharField(max_length=250)
    bio = models.CharField(max_length=400)
    description = models.CharField(max_length=900)

    def __str__(self):
        return self.title
