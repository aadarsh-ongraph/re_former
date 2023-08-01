class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user, :user_signed_in?
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  
    def user_signed_in?
      !current_user.nil?
    end

    def authenticate_user!
        redirect_to login_path, alert: 'Please log in first.' unless user_signed_in?
      end

end
