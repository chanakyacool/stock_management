class CompanyController < ApplicationController
	@companies  = Company.includes(:godown)
end
