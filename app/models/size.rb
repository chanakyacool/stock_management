class Size < ActiveRecord::Base

		include PublicActivity::Model
	tracked owner: ->(controller, model){controller && controller.current_admin_user}
	
  attr_accessible :size, :company_id, :godown_id
  belongs_to :company 
 	has_many :sizetypes
  has_many :types, :through => :sizetypes

  validates_presence_of :size, :company_id, :godown_id
end
