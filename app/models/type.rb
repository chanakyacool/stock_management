class Type < ActiveRecord::Base
	
		include PublicActivity::Model
	tracked owner: ->(controller, model){controller && controller.current_admin_user}

  attr_accessible :type_name, :company_id, :godown_id
  belongs_to :company
 	has_many :sizetypes
   has_many :sizes, :through => :sizetypes

   validates_presence_of :type_name, :company_id, :godown_id
  
end
