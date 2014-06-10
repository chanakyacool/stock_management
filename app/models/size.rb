class Size < ActiveRecord::Base
  attr_accessible :size, :company_id
  belongs_to :company 
  has_and_belongs_to_many :types
end
