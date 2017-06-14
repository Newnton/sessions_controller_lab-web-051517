class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_cart

   def current_user
     session[:user]
   end

  def hello
    if !current_user.nil?
      redirect_to 'greets/welcome'
    else
      redirect_to 'greets/log_in'
    end
  end
end
