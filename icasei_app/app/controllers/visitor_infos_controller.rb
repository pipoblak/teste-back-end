class VisitorInfosController < BaseController
  skip_before_action :verify_authenticity_token
  layout "dashboard"
  def index
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
