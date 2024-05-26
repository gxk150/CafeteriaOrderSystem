from django.db import models

from django.utils import timezone


class Admin(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class User(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    gender = models.CharField(max_length=10)
    age = models.IntegerField()
    nationality = models.CharField(max_length=255)
    ethnic_group = models.CharField(max_length=255, default='Unknown')
    role = models.CharField(max_length=10, choices=[('student', 'Student'), ('staff', 'Staff')])
    wallet = models.FloatField(default=0.0)

    def __str__(self):
        return self.name


class Merchant(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    address = models.CharField(max_length=255, default='Default Address')
    rating = models.IntegerField(default=0)
    favorite_count = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class Keyword(models.Model):
    id = models.AutoField(primary_key=True)
    keyword = models.CharField(max_length=255)

    def __str__(self):
        return self.keyword


class MerchantKeyword(models.Model):
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE, null=True, blank=True)
    keyword = models.ForeignKey(Keyword, on_delete=models.CASCADE)


class Dish(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    category = models.CharField(max_length=255)
    description = models.TextField()
    image = models.ImageField(upload_to='images/', null=True, blank=True)
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE)
    ingredients = models.TextField()
    nutrition_info = models.TextField()
    allergens = models.TextField()
    user_rating = models.FloatField(default=0.0)
    review = models.TextField(null=True, blank=True)
    is_special = models.BooleanField(default=False)
    favorite_count = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class MerchantReview(models.Model):
    id = models.AutoField(primary_key=True)
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.IntegerField()
    comment = models.TextField()
    created_time = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return f'Review by {self.user.name} for {self.restaurant.name}'


class DishReview(models.Model):
    id = models.AutoField(primary_key=True)
    dish = models.ForeignKey(Dish, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.IntegerField()
    comment = models.TextField(null=True, blank=True)
    created_time = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return f'Review by {self.user.name} for {self.dish.name}'


class Order(models.Model):
    STATUS_CHOICES = [
        ('Pending', 'Pending'),
        ('Completed', 'Completed'),
        ('Cancelled', 'Cancelled')
    ]

    ORDER_TYPE_CHOICES = [
        ('Online', 'Online'),
        ('Offline', 'Offline')
    ]

    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE)
    order_date = models.DateTimeField(default=timezone.now)
    total_price = models.FloatField()
    status = models.CharField(max_length=10, choices=STATUS_CHOICES)
    order_type = models.CharField(max_length=10, choices=ORDER_TYPE_CHOICES)

    def __str__(self):
        return f'Order {self.id} by {self.user.name}'


class OrderDetail(models.Model):
    id = models.AutoField(primary_key=True)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    dish = models.ForeignKey(Dish, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    price = models.FloatField()

    def __str__(self):
        return f'Detail {self.id} for Order {self.order.id}'


class FavoriteMerchant(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.user.name} favorites {self.merchant.name}'


class FavoriteDish(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    dish = models.ForeignKey(Dish, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.user.name} favorites {self.dish.name}'


class DishPriceChange(models.Model):
    id = models.AutoField(primary_key=True)
    dish = models.ForeignKey(Dish, on_delete=models.CASCADE)
    original_price = models.FloatField()
    changed_price = models.FloatField()
    change_time = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return f'Price change for {self.dish.name}'
