from django.db import models

# Create your models here.

class textAnimation (models.Model):
    name = models.CharField(max_length=500,blank=True)
    animation = models.CharField(max_length=500,blank=True)
    animationI = models.CharField(max_length=500,blank=True)
    animationII = models.CharField(max_length=500,blank=True)
    animationIV = models.CharField(max_length=500,blank=True)
    animationV = models.CharField(max_length=500,blank=True)
    animationVI = models.CharField(max_length=500,blank=True)

    def __str__(self):
        return self.name
