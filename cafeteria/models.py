from django.db import models


class User(models.Model):
    USER_ROLE_CHOICES = [
        ('student', 'Student'),
        ('staff', 'Staff'),
    ]

    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=256)
    name = models.CharField(max_length=50)
    gender = models.CharField(max_length=10)
    role = models.CharField(max_length=10, choices=USER_ROLE_CHOICES)
    student_id = models.CharField(max_length=20, blank=True, null=True)
    staff_id = models.CharField(max_length=20, blank=True, null=True)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=20)

    def __str__(self):
        return self.username


class Merchant(models.Model):
    id = models.AutoField(primary_key=True, default='default')
    name = models.CharField(max_length=100, unique=True, default='default')
    address = models.CharField(max_length=255, default='default')
    description = models.TextField(blank=True, null=True)
    rating = models.FloatField(default=0)
    email = models.EmailField(unique=True, default='default')
    phone = models.CharField(max_length=20, default='default')

    def __str__(self):
        return self.name


class Admin(models.Model):
    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=256)
    name = models.CharField(max_length=50)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=20)

    def __str__(self):
        return self.username


class Dish(models.Model):
    dish_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    category = models.CharField(max_length=50)
    description = models.TextField()
    image = models.ImageField(upload_to='dishes/')
    merchant = models.ForeignKey(Merchant, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Order(models.Model):
    order_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    dish = models.ForeignKey(Dish, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    status = models.CharField(max_length=50, choices=[('Pending', 'Pending'), ('Confirmed', 'Confirmed'), ('Delivered', 'Delivered')])
    order_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Order {self.order_id} by {self.user.username}"