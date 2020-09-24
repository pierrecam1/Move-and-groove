class ApplicationController < ActionController::Base

    before_action :configure_devise_parameters, if: :devise_controller?
    
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :avatar, :photo)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :photo, :username, :password, :password_confirmation ) }
    end

    
    def after_sign_in_path_for(resource)
        '/home/dashboard'
    end
    
end




