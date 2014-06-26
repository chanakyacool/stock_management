class HomeController < ApplicationController
	def index
			
	end
	def self.findcompany
		find_all_by_company_id
	end
end
