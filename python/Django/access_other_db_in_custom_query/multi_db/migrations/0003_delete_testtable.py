# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2018-02-23 13:52
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('multi_db', '0002_auto_20180223_1346'),
    ]

    operations = [
        migrations.DeleteModel(
            name='TestTable',
        ),
    ]