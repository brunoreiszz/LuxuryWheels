# Generated by Django 2.2.27 on 2023-07-19 16:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0009_auto_20230719_1650'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='status',
            field=models.CharField(choices=[('Completed', 'Completed'), ('Out For Shipping', 'Out For Shipping'), ('Pending', 'Pending')], default='Pending', max_length=150),
        ),
    ]
