class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :null_session
 	before_filter :authorize
  layout 'bootstrap'

  def authorize

  	@current_user = session[:current_user]

  	I18n.locale = cookies[:lang]

  end

end
