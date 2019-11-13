class SubCategorySerializer < ActiveModel::Serializer
  has_many :items
  attributes :id, :name, :img_url
end
