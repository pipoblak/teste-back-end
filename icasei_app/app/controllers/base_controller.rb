class BaseController < ApplicationController
  inherit_resources
  respond_to :html, :js
  
  def index
  end

  def create
    create! do |_success, failure|
      failure.html { redirect_to new_resource_path, alert: resource.errors.full_messages.join(', ') } if resource.errors.any?
    end
  end

  def update
    update! do |_success, failure|
      failure.html { redirect_to edit_resource_path, alert: resource.errors[:base].join(', ') } if resource.errors[:base].any?
    end
  end

  def destroy
    destroy! do |_success, failure|
      failure.html { redirect_to collection_path, alert: resource.errors[:base].join(', ') } if resource.errors[:base].any?
    end
  end

  private

  def resource_params
    params.require(resource_class.model_name.to_s.underscore.to_sym).permit(resource_class::ACCESSIBLE_ATTRIBUTES)
  end

end
