# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hamster.destroy_all
hammy = Hamster.create(name: "hammy", username: "hammyham")
gerby = Hamster.create(name: "ger", username: "gerbygerr")

Category.destroy_all
winter = Category.create(category_name: "Winter Gear")
fashion = Category.create(category_name: "Fashion")


SubCategory.destroy_all
mini_homes = SubCategory.create(name: "Mini Homes", img_url: "https://images-na.ssl-images-amazon.com/images/I/51vgpBCfdvL._SL1000_.jpg", category_id: winter.id)
hammocks = SubCategory.create(name: "House Hammocks", img_url: "https://www.pet-bliss.ie/wp-content/uploads/2018/10/HamsterHammockTrixieLargeImage.jpg", category_id: winter.id)
winter_hats = SubCategory.create(name: "Winter Hats", img_url: "https://i.pinimg.com/originals/9f/a8/bc/9fa8bc3507494f6c64e68d4f2a95af43.jpg", category_id: winter.id)
pads = SubCategory.create(name: "Heating Pads", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: winter.id)

hats = SubCategory.create(name: "Hats", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)
costume = SubCategory.create(name: "Costumes", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)

Item.destroy_all
Item.create(name: "Green Crocodile Mini Home", img_url: "https://images-na.ssl-images-amazon.com/images/I/718PwlKHqsL._SL1100_.jpg", price: 14.99, sub_category_id: mini_homes.id)
Item.create(name: "Pink Pig Mini Home", img_url: "https://images-na.ssl-images-amazon.com/images/I/610U1SegnFL._SL1100_.jpg", price: 14.99, sub_category_id: mini_homes.id)
Item.create(name: "Green Crocodile Mini Home", img_url: "https://images-na.ssl-images-amazon.com/images/I/718PwlKHqsL._SL1100_.jpg", price: 14.99, sub_category_id: mini_homes.id)
Item.create(name: "Pink Pig Mini Home", img_url: "https://images-na.ssl-images-amazon.com/images/I/610U1SegnFL._SL1100_.jpg", price: 14.99, sub_category_id: mini_homes.id)

Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: hammocks.id)
Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: hammocks.id)
Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: hammocks.id)
Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: hammocks.id)

Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: winter_hats.id)
Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: winter_hats.id)
Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: winter_hats.id)
Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: winter_hats.id)

Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: pads.id)
Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: pads.id)
Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: pads.id)
Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.79, sub_category_id: pads.id)

Item.create(name: "hatitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.73, sub_category_id: hats.id)
Item.create(name: "hatitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.72, sub_category_id: hats.id)

Item.create(name: "costumeitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.72, sub_category_id: costume.id)
Item.create(name: "costumeitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: 7.72, sub_category_id: costume.id)
