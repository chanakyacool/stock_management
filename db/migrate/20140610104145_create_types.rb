class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :type_name
      t.integer :company_id
      t.integer :godown_id

      t.timestamps
    end
     add_index :types, [:company_id, :godown_id]
  end
end
