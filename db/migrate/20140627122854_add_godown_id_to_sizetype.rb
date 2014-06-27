class AddGodownIdToSizetype < ActiveRecord::Migration
  def change
    add_column :sizetypes, :godown_id, :integer
  end
end
