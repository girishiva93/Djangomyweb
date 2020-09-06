from django.db import models

# Create your models here.


class portfolio (models.Model):
    imageheader = models.CharField(max_length=200)
    photo = models.ImageField(upload_to='photo/%Y/%m/%d')

    def __str__(self):
        return self.imageheader
