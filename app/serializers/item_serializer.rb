class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :price, :description, :hamster_id, :sub_category_id
end

