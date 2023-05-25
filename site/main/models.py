from django.db import models


#class Image(models.Model):
#    title = models.CharField(max_length=200)
#    image = models.ImageField(upload_to='static')

#    def __str__(self):
#        return self.title








class Task(models.Model):
    title = models.CharField('Задача', max_length=250)
    task = models.TextField('Задачи')


    def __str__(self):
        return self.title


    class Meta:
        verbose_name = 'Задача'
        verbose_name_plural = 'Задачи'



# Create your models here.
