class ApplicationController < ActionController::Base

private

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user

    def authorize
        redirect_to login_url, alert: "Must login to do that" if current_user.nil?
    end

end
