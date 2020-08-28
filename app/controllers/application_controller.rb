class ApplicationController < ActionController::Base

    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters
<<<<<<< HEAD
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :avatar)}
=======
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation)}
>>>>>>> parent of 419ce49... -- facebook test
    end

    
end
