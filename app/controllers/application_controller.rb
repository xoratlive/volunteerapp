class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :volunteer, :admin ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :about1, :website, :address, :biographical_information, :phone_number, :image ])
  end
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || volunteer_opportunities_path
  end


end
