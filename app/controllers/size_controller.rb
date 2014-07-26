class SizeController < ApplicationController

	@sizes  = Size.includes(:companies)

end
