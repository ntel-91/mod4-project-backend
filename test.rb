require 'faker'

cat_1 = Faker::Commerce.department(max: 1)
cat_2 = Faker::Commerce.department(max: 1)
cat_3 = Faker::Commerce.department(max: 1)
cat_4 = Faker::Commerce.department(max: 1)
cat_5 = Faker::Commerce.department(max: 1)
cat_6 = Faker::Commerce.department(max: 1)
cat_7 = Faker::Commerce.department(max: 1)
cat_8 = Faker::Commerce.department(max: 1)
cat_9 = Faker::Commerce.department(max: 1)
cat_10 = Faker::Commerce.department(max: 1)

categories = [cat_1, cat_2, cat_3, cat_4, cat_5, cat_6, cat_7, cat_8, cat_9, cat_10]

sub_cat = []

categories.each do |c| 
    2.times do
        "#{c} - #{Faker::Types.rb_string}"
    end
end


puts Hamster.all





