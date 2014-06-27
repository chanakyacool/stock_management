class Company < ActiveRecord::Base
  attr_accessible :company_name, :godown_id
  has_many :sizes
  has_many :types
  has_many :sizetypes
  belongs_to :godown
end
