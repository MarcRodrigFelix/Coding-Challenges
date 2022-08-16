class AddParentIdToTrees < ActiveRecord::Migration[7.0]
  def change
    add_column :trees, :parent_tree_id, :integer, index: true
  end
end
