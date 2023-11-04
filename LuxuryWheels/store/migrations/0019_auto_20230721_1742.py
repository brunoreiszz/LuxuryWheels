# Generated by Django 2.2.27 on 2023-07-21 16:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0018_auto_20230719_2255'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='status',
            field=models.CharField(choices=[('Out For Shipping', 'Out For Shipping'), ('Pending', 'Pending'), ('Completed', 'Completed')], default='Pending', max_length=150),
        ),
    ]
