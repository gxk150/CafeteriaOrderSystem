import csv
import os
from datetime import datetime

import django
from django.utils import timezone

# 设置 Django 环境
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'CafeteriaOrderSystem.settings')
django.setup()

from cafeteria.models import Admin

def insert_data_from_csv(file_path):
    with open(file_path, newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        admins = []
        for row in reader:
            admin = Admin(
                id=int(row['id']),
                name=row['name'],
                password=row['password'],
                created_time=datetime.strptime(row['created_time'], '%Y-%m-%d %H:%M:%S'),
                permission_type=row['permission_type']
            )
            admins.append(admin)
        Admin.objects.bulk_create(admins)

# 替换为 CSV 文件的路径
csv_file_path = os.path.join(os.path.dirname(__file__), '../data/admin_data.csv')
insert_data_from_csv(csv_file_path)