class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_filter :require_login
  
  def require_login
    unless current_user
      redirect_to signin_path, :notice => "You must Log-in!"
    end
  end
end
