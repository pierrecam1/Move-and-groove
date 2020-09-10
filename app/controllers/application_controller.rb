class ApplicationController < ActionController::Base

    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :avatar, :photo)}
    end

    
    def after_sign_in_path_for(resource)
        '/home/dashboard'
    end
end




