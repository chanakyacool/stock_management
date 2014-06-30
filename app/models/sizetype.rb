class Sizetype < ActiveRecord::Base

  attr_accessible :size_id, :type_id, :company_id, :godown_id, :quantity
  belongs_to :size
  belongs_to :type
  belongs_to :company

  validates_presence_of :size_id, :type_id, :godown_id, :company_id, :quantity
  # validates_uniqueness_of :size_id, :type_id, :godown_id, :company_id, :quantity
  validates :godown_id, :uniqueness => {:scope => [:size_id, :type_id, :company_id, :quantity]}

end
