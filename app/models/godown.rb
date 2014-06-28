class Godown < ActiveRecord::Base
  attr_accessible :godown_place
  has_many :companies

  validates_presence_of :godown_place
end
