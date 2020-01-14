require 'faker'

product = Faker::Commerce.product_name
pic1 = Faker::LoremFlickr.image(size: "100x100", search_terms: [product])
pic2 = Faker::LoremFlickr.image

puts product
puts pic1
puts pic2




