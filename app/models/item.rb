class Item < ApplicationRecord
    belongs_to :hamster, required: false
    belongs_to :sub_category
end
