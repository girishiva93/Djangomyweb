from django.db import models

# Create your models here.


class service (models.Model):
    header = models.CharField(max_length=250)
    icons = models.CharField(max_length=250,blank=True)
    description = models.TextField()

    def __str__(self):
        return self.header
