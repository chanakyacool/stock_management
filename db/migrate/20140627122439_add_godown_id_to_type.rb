class AddGodownIdToType < ActiveRecord::Migration
  def change
    add_column :types, :godown_id, :integer
  end
end
