class Godown < ActiveRecord::Base
  attr_accessible :godown_place
  has_many :comapanies
end
