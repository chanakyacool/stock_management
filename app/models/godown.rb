class Godown < ActiveRecord::Base

	include PublicActivity::Model
	tracked owner: ->(controller, model){controller && controller.current_admin_user}


  attr_accessible :godown_place
  has_many :companies

  validates_presence_of :godown_place
end
