class VisitorInfosController < BaseController
  skip_before_action :verify_authenticity_token
  def index
    @visitor_infos = VisitorInfo.all
  end 
  def create
    Thread.new {
      VisitorInfo.create(resource_params)
    }
    respond_to do |format|
      format.js
    end 
  end
end
