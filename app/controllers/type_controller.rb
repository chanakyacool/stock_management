class TypeController < ApplicationController
		@types  = Type.includes(:companies)
		
end
