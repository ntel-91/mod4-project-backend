class CategorySerializer < ActiveModel::Serializer
  attributes :id, :category_name, :sub_categories
  
  def sub_categories
    ActiveModel::SerializableResource.new(object.sub_categories, each_serializer: SubCategorySerializer)  
  end
  # class SubCategorySerializer < ActiveModel::Serializer
  #   has_many :items
  #   attributes :id, :name, :img_url
  # end
end
