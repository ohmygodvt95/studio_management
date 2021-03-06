class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  private
  def layout_by_resource
    if devise_controller? && (controller_name == "passwords" ||
      controller_name == "sessions")
      "devise"
    else
      "application"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:name, :avatar, :role,
      :level, :phone, :address]
  end
end
