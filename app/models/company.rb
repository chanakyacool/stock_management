class Company < ActiveRecord::Base
  attr_accessible :company_name
  has_many :sizes
  has_many :types
end
