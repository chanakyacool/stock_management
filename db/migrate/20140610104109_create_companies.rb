class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.integer :godown_id

      t.timestamps
    end
      add_index :companies, [:godown_id]
  end
end
