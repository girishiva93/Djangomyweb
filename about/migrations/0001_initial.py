# Generated by Django 3.1.1 on 2020-09-03 05:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('profile', models.CharField(max_length=200)),
                ('email', models.CharField(max_length=250)),
                ('phone', models.CharField(max_length=20)),
                ('description', models.TextField(blank=True)),
                ('photo', models.ImageField(upload_to='photo/%Y/%m/%d')),
                ('download', models.ImageField(blank=True, upload_to='photo')),
            ],
        ),
    ]
