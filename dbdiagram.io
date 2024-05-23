Table Admin {
  id int [pk, increment]
  user_name varchar(255)
  password varchar(255)
  created_time datetime [default: `CURRENT_TIMESTAMP`]
  permission_type varchar(255)
}

Table User {
  id int [pk, increment]
  name varchar(255)
  gender varchar(10)
  age int
  nationality varchar(255)
  ethnic_group varchar(255) [default: 'Unknown']
  role varchar(10)
  wallet float [default: 0.0]
}

Table Merchant {
  id int [pk, increment]
  name varchar(255)
  address varchar(255) [default: 'Default Address']
  rating int [default: 0]
  favorite_count int [default: 0]
}

Table Keyword {
  id int [pk, increment]
  keyword varchar(255)
}

Table MerchantKeyword {
  id int [pk, increment]
  merchant_id int [ref: > Merchant.id]
  keyword_id int [ref: > Keyword.id]
}

Table Dish {
  id int [pk, increment]
  name varchar(255)
  price float
  category varchar(255)
  description text
  image varchar(255) [null]
  merchant_id int [ref: > Merchant.id]
  ingredients text
  nutrition_info text
  allergens text
  user_rating float [default: 0.0]
  review text [null]
  is_special boolean [default: false]
  favorite_count int [default: 0]
}

Table RestaurantReview {
  id int [pk, increment]
  restaurant_id int [ref: > Merchant.id]
  user_id int [ref: > User.id]
  rating int
  comment text
  created_time datetime [default: `CURRENT_TIMESTAMP`]
}

Table DishReview {
  id int [pk, increment]
  dish_id int [ref: > Dish.id]
  user_id int [ref: > User.id]
  rating int
  comment text [null]
  created_time datetime [default: `CURRENT_TIMESTAMP`]
}

Table Order {
  id int [pk, increment]
  user_id int [ref: > User.id]
  merchant_id int [ref: > Merchant.id]
  order_date datetime [default: `CURRENT_TIMESTAMP`]
  total_price float
  status varchar(10)
  order_type varchar(10)
}

Table OrderDetail {
  id int [pk, increment]
  order_id int [ref: > Order.id]
  dish_id int [ref: > Dish.id]
  quantity int
  price float
}

Table FavoriteMerchant {
  id int [pk, increment]
  user_id int [ref: > User.id]
  merchant_id int [ref: > Merchant.id]
}

Table FavoriteDish {
  id int [pk, increment]
  user_id int [ref: > User.id]
  dish_id int [ref: > Dish.id]
}

Table DishPriceChange {
  id int [pk, increment]
  dish_id int [ref: > Dish.id]
  original_price float
  changed_price float
  change_time datetime [default: `CURRENT_TIMESTAMP`]
}
