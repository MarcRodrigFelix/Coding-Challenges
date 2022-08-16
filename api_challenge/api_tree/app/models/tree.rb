class Tree < ApplicationRecord
    has_many :children, :class_name => "Tree", foreign_key: "parent_id"
    belonts_to :parent, :class_name => "Tree"
end