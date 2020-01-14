# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Hamster.destroy_all
# hammy = Hamster.create(name: "hammy", username: "hammyham")
# gerby = Hamster.create(name: "ger", username: "gerbygerr")

# Category.destroy_all
# winter = Category.create(category_name: "Winter Gear")
# fashion = Category.create(category_name: "Fashion")
# workout = Category.create(category_name: "Workout Equipment")
# entertainment = Category.create(category_name: "Entertainment")

Category.destroy_all
SubCategory.destroy_all
Item.destroy_all

6.times do
    category = Category.create(category_name: Faker::Commerce.department(max: 1))

    5.times do
        sub_cat = SubCategory.create(name: "#{category.category_name} - #{Faker::Types.rb_string}", img_url: "", category_id: category.id)

        5.times do
            product = Faker::Commerce.product_name
            Item.create(name: product, img_url: Faker::LoremFlickr.image(size: "100x100", search_terms: [product]), price: Faker::Commerce.price, sub_category_id: sub_cat.id)
        end
    end

end


# SubCategory.destroy_all

# Category.all.each do |c| 
#     6.times do
#         SubCategory.create(name: "#{c} - #{Faker::Types.rb_string}", img_url: "", category_id: c.id)
#     end
# end

# mini_homes = SubCategory.create(name: "Mini Homes", img_url: "https://images-na.ssl-images-amazon.com/images/I/51vgpBCfdvL._SL1000_.jpg", category_id: winter.id)
# hammocks = SubCategory.create(name: "House Hammocks", img_url: "https://www.pet-bliss.ie/wp-content/uploads/2018/10/HamsterHammockTrixieLargeImage.jpg", category_id: winter.id)
# winter_hats = SubCategory.create(name: "Winter Hats", img_url: "https://i.pinimg.com/originals/9f/a8/bc/9fa8bc3507494f6c64e68d4f2a95af43.jpg", category_id: winter.id)
# pads = SubCategory.create(name: "Heating Pads", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: winter.id)

# hats = SubCategory.create(name: "Hats", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)
# costume = SubCategory.create(name: "Costumes", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)
# dresses = SubCategory.create(name: "Hamster Dresses", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)
# shirts = SubCategory.create(name: "Hamster Shirts", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: fashion.id)

# balls = SubCategory.create(name: "Ball Runners", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: workout.id)
# wheels = SubCategory.create(name: "Wheels", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: workout.id)
# weights = SubCategory.create(name: "Weights", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: workout.id)
# stairs = SubCategory.create(name: "Stairs", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: workout.id)

# swings = SubCategory.create(name: "Hamster Swings", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: entertainment.id)
# playhouse = SubCategory.create(name: "Hamster Play House", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: entertainment.id)
# donuts = SubCategory.create(name: "Donuts", img_url: "https://images-na.ssl-images-amazon.com/images/I/717HTyceK3L._SL1500_.jpg", category_id: entertainment.id)


# Item.destroy_all

# Item.all.each do |i|
#     16.times do
#         Item.create(name: Faker::Commerce.product_name, img_url: Faker::LoremFlickr.image(size: "50x60"), price: Faker::Commerce.price, sub_category_id: i.id)
#     end
# end

# winter gear
# Item.create(name: "Green Crocodile", img_url: "https://images-na.ssl-images-amazon.com/images/I/718PwlKHqsL._SL1100_.jpg", price: rand.round(2)*100, sub_category_id: mini_homes.id)
# Item.create(name: "Pink Pig", img_url: "https://images-na.ssl-images-amazon.com/images/I/610U1SegnFL._SL1100_.jpg", price: rand.round(2)*100, sub_category_id: mini_homes.id)
# Item.create(name: "Green Crocodile", img_url: "https://images-na.ssl-images-amazon.com/images/I/718PwlKHqsL._SL1100_.jpg", price: rand.round(2)*100, sub_category_id: mini_homes.id)
# Item.create(name: "Pink Pig", img_url: "https://images-na.ssl-images-amazon.com/images/I/610U1SegnFL._SL1100_.jpg", price: rand.round(2)*100, sub_category_id: mini_homes.id)

# Item.create(name: "Banana Hammock", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hammocks.id)
# Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hammocks.id)
# Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hammocks.id)
# Item.create(name: "Banana Hammock Hamster House", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hammocks.id)

# Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: winter_hats.id)
# Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: winter_hats.id)
# Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: winter_hats.id)
# Item.create(name: "WinterHatItem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: winter_hats.id)

# Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: pads.id)
# Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: pads.id)
# Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: pads.id)
# Item.create(name: "padsitem", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: pads.id)

# # fashion
# Item.create(name: "hat 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hats.id)
# Item.create(name: "hat 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hats.id)
# Item.create(name: "hat 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hats.id)
# Item.create(name: "hat 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: hats.id)

# Item.create(name: "costume 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: costume.id)
# Item.create(name: "costume 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: costume.id)
# Item.create(name: "costume 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: costume.id)
# Item.create(name: "costume 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: costume.id)

# Item.create(name: "dresses 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: dresses.id)
# Item.create(name: "dresses 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: dresses.id)
# Item.create(name: "dresses 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: dresses.id)
# Item.create(name: "dresses 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: dresses.id)

# Item.create(name: "shirt 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: shirts.id)
# Item.create(name: "shirt 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: shirts.id)
# Item.create(name: "shirt 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: shirts.id)
# Item.create(name: "shirt 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: shirts.id)

# # workout
# Item.create(name: "ball 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: balls.id)
# Item.create(name: "ball 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: balls.id)
# Item.create(name: "ball 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: balls.id)
# Item.create(name: "ball 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: balls.id)

# Item.create(name: "wheel 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: wheels.id)
# Item.create(name: "wheel 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: wheels.id)
# Item.create(name: "wheel 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: wheels.id)
# Item.create(name: "wheel 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: wheels.id)

# Item.create(name: "weight 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: weights.id)
# Item.create(name: "weight 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: weights.id)
# Item.create(name: "weight 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: weights.id)
# Item.create(name: "weight 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: weights.id)

# Item.create(name: "stairs 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: stairs.id)
# Item.create(name: "stairs 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: stairs.id)
# Item.create(name: "stairs 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: stairs.id)
# Item.create(name: "stairs 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: stairs.id)

# # entertainment
# Item.create(name: "swing 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: swings.id)
# Item.create(name: "swing 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: swings.id)
# Item.create(name: "swing 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: swings.id)
# Item.create(name: "swing 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: swings.id)

# Item.create(name: "playhouse 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: playhouse.id)
# Item.create(name: "playhouse 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: playhouse.id)
# Item.create(name: "playhouse 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: playhouse.id)
# Item.create(name: "playhouse 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: playhouse.id)

# Item.create(name: "donut 1", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: donuts.id)
# Item.create(name: "donut 2", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: donuts.id)
# Item.create(name: "donut 3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: donuts.id)
# Item.create(name: "donut 4", img_url: "https://images-na.ssl-images-amazon.com/images/I/61cLA0mY0-L._SL1000_.jpg", price: rand.round(2)*10, sub_category_id: donuts.id)