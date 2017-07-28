class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
      devise_parameter_sanitizer.permit(:account_update, keys: [:about_me, :display_name,
                                                                :password,
                                                                :password_confrimation])
    end
end
