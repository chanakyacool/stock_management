class HomeController < ApplicationController
	def allstock
			@godowns = Godown.all
			logger.info"*******#{@companies}" 
			@companies = Company.all
	end

 
end
