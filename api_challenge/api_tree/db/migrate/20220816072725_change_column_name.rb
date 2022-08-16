class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :trees, :parent_id, :parent
  end
end
