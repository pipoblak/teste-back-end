class VisitorInfosController < BaseController
  skip_before_action :verify_authenticity_token
  def index
    @visitor_infos = VisitorInfo.all.order(created_at: :desc).page(params[:page]).per(50)
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
