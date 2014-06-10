class AddCompanyIdToSizes < ActiveRecord::Migration
  def change
    add_column :sizes, :company_id, :integer
  end

end
