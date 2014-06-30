class AddQuantityToSizetypes < ActiveRecord::Migration
  def change
    add_column :sizetypes, :quantity, :integer, default: 0, null: false
  end
end
