class TreeSerializer < ActiveModel::Serializer
  attributes :id, :label, :children
  has_many :children

end
