class Company < ActiveRecord::Base
  attr_accessible :company_name
  has_many :sizes
  has_many :types
  has_many :sizetypes
end
