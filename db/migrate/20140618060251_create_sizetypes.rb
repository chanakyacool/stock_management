class CreateSizetypes < ActiveRecord::Migration
  def change
    create_table :sizetypes do |t|
      t.integer :size_id
      t.integer :type_id
      t.integer :company_id 
      t.integer :godown_id
      t.timestamps
      
    end
    add_index :sizetypes, [:size_id, :type_id, :company_id]
  end
end
