from django.db import models

# Create your models here.


class portfolio (models.Model):
    title = models.CharField(max_length=200)
    bio = models.CharField(max_length=500)
    photo = models.ImageField(upload_to='photo/%Y/%m/%d')
    imageheader = models.CharField(max_length=200)

    def __str__(self):
        return self.title
