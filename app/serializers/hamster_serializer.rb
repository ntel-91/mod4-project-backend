class HamsterSerializer < ActiveModel::Serializer
  has_many :items
  attributes :id, :name, :username
end
