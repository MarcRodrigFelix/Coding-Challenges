class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.integer :parent_id
      t.string :label

      t.timestamps
    end
  end
end
