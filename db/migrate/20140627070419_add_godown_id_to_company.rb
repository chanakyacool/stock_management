class AddGodownIdToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :godown_id, :integer
  end
end
