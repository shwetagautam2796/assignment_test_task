class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource_or_scope)
    posts_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city, :state, :country, :phone, :gender, :avatar_url])
  end
end