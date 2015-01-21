class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :null_session
 	before_filter :authorize
  around_filter :calculate_time
  layout 'bootstrap'

  # before_filter :authorize_user

  def authorize

  	@current_user = session[:current_user]

  end

  def calculate_time

    t = Time.now
    yield 
    t2 = Time.now
    @timetaken = (t2 - t).to_i.abs + 2.5
    # raise @timetaken.inspect
  end

  # def default_url_options
  #   { locale: I18n.locale }
  # end

end
