class Type < ActiveRecord::Base
  attr_accessible :type_name, :company_id
  belongs_to :company
  has_and_belongs_to_many :sizes
  
end
