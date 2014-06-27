class AddGodownIdToSize < ActiveRecord::Migration
  def change
    add_column :sizes, :godown_id, :integer
  end
end
