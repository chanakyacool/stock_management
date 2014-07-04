class Company < ActiveRecord::Base
	
	include PublicActivity::Model
	tracked owner: ->(controller, model){controller && controller.current_admin_user}

  attr_accessible :company_name, :godown_id
  has_many :sizes
  has_many :types
  has_many :sizetypes
  belongs_to :godown
  validates_presence_of :company_name, :godown_id
end
