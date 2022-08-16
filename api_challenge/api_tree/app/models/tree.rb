class Tree < ApplicationRecord
    has_many :children, :class_name => "Tree", foreign_key: "parent_id"
    belongs_to :parent, :class_name => "Tree", optional: true
end