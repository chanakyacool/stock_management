class Sizetype < ActiveRecord::Base

  attr_accessible :size_id, :type_id, :company_id
  belongs_to :size
  belongs_to :type
  belongs_to :company

end
