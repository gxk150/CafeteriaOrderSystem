import csv
import os
from datetime import datetime
import pytz

import django
from django.contrib.auth.hashers import make_password

from django.utils import timezone

# 设置 Django 环境
project_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'CafeteriaOrderSystem.settings')
import sys
sys.path.append(project_path)
django.setup()

from cafeteria.models import Admin, User, Merchant, Dish


def insert_admin_from_csv(file_path):
    Admin.objects.all().delete()  # 清空表
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        admins = []
        for row in reader:
            admin = Admin(
                id=int(row['id']),
                name=row['name'],
                password=make_password(row['password']),
            )
            admins.append(admin)
        Admin.objects.bulk_create(admins)


def insert_user_from_csv(file_path):
    User.objects.all().delete()  # 清空表
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        users = []
        for row in reader:
            user = User(
                id=int(row['id']),
                name=row['name'],
                password=make_password(row['password']),
                gender=row['gender'],
                age=int(row['age']),
                nationality=row['nationality'],
                ethnic_group=row['ethnic_group'],
                role=row['role'],
                wallet=float(row['wallet'])
            )
            users.append(user)
        User.objects.bulk_create(users)


def insert_merchant_from_csv(file_path):
    Merchant.objects.all().delete()  # 清空表
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        merchants = []
        for row in reader:
            merchant = Merchant(
                id=int(row['id']),
                name=row['name'],
                password=make_password(row['id']),  # 使用 id 作为密码
                address=row['address'],
                rating=0,
                favorite_count=0
            )
            merchants.append(merchant)
        Merchant.objects.bulk_create(merchants)


def insert_dish_from_csv(file_path):
    Dish.objects.all().delete()  # 清空表
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        dishes = []
        for row in reader:
            dish = Dish(
                id=int(row['id']),
                name=row['name'],
                price=float(row['price']),
                category=row['category'],
                description=row['description'],
                image=row['image'],
                merchant_id=int(row['merchant_id']),
                ingredients=row['ingredients'],
                nutrition_info=row['nutrition_info'],
                allergens=row['allergens'],
                user_rating=float(row['user_rating']) if row['user_rating'] else 0.0,
                review=row['review'] if row['review'] else None,
                is_special=row['is_special'].lower() == 'true',
                favorite_count=int(row['favorite_count']) if row['favorite_count'] else 0
            )
            dishes.append(dish)
        Dish.objects.bulk_create(dishes)


# 指定 CSV 文件路径
data_dir = os.path.join(project_path, 'data')
admin_path = os.path.join(data_dir, 'admin_data.csv')
user_path = os.path.join(data_dir, 'user_data.csv')
merchant_path = os.path.join(data_dir, 'merchant_data.csv')
dish_path = os.path.join(data_dir, 'dish_data.csv')

# 插入数据
insert_admin_from_csv(admin_path)
insert_user_from_csv(user_path)
insert_merchant_from_csv(merchant_path)
insert_dish_from_csv(dish_path)