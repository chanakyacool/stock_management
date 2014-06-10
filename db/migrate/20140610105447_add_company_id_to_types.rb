class AddCompanyIdToTypes < ActiveRecord::Migration
  def change
    add_column :types, :company_id, :integer
  end
end
