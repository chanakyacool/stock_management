class CreateSizetypes < ActiveRecord::Migration
  def change
    create_table :sizetypes do |t|
      t.integer :size_id
      t.integer :type_id
      t.timestamps
      
    end
    add_index :sizetypes, [:size_id, :type_id]
  end
end
