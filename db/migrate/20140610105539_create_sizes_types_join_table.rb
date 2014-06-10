class CreateSizesTypesJoinTable < ActiveRecord::Migration
 def self.up
    create_table :sizes_types, :id => false do |t|
      t.integer :size_id
      t.integer :type_id
    end

    add_index :sizes_types, [:size_id, :type_id]
  end

  def self.down
    drop_table :sizes_types
  end
end
