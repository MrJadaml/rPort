class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :admin_session

private

  def admin_session
    Admin.find_by(id: session[:user_id])
  end

end
