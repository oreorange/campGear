class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except: [:index]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def after_sign_in_path_for(resource_or_scope)
    if resource.is_a?(Admin)
      admin_genres_path
    else
      gears_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
