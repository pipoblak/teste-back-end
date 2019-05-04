class AppController < ApplicationController
  before_action :set_tracking
  def index
  end 
  def about
  end
  def contact 
  end 

  private 
  def set_tracking
    @visitorT = true
  end 
end
