class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :size
      t.integer :company_id
      t.integer :godown_id

      t.timestamps
    end
     add_index :sizes, [:company_id, :godown_id]
  end
end
