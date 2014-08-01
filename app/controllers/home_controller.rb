class HomeController < ApplicationController
	def allstock
			@godowns = Godown.all
			logger.info"*******#{@companies}" 
			@companies = Company.all
			@sizetypes = Sizetype.includes(:company, :size, :type)
	end


	# def bansilalpet
	# 	respond_to do |format|
 #      format.html
 #      format.pdf do
 #        render :pdf => "bansilalpet.pdf"
 #      end
 #    end
	# end

 def count

    Sizetype.find_all_by_godown_id_and_company_id(1,1).each do |h|
      unless h.quantity.nil?
        @count += h.quantity
      end
    end 
  end
end
