class Size < ActiveRecord::Base
  attr_accessible :size, :company_id, :godown_id
  belongs_to :company 
 	has_many :sizetypes
  has_many :types, :through => :sizetypes

  validates_presence_of :size, :company_id, :godown_id
end
