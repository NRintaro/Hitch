class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  include ApplicationHelper

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
