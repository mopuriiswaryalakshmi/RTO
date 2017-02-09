class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #authourization method 

  def check_is_admin?
  	if current_user.is_admin
  		return true
  	else
  		redirect_to root_path, alert: "you are not authourized"
  	end
  end
end


