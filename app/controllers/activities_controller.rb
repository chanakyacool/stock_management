class ActivitiesController < ApplicationController
  def index
  	@activities = PublicActivity::Activity.page(params[:page]).order("created_at desc")
  end
end
