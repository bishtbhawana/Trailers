class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
      
  private
 
    def record_not_found
      render plain: "404 Not Found", status: 404
    end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :null_session
 	before_filter :authorize
  around_filter :calculate_time
  layout 'bootstrap'

  # before_filter :authorize_user
  def default_url_options(options = {})
  { locale: I18n.locale }.merge options
   end
  def authorize

    @current_user = session[:current_user]

    I18n.locale = cookies[:lang]

  end

  def calculate_time

    t = Time.now + 1000
    yield 
    t2 = Time.now
    @timetaken = (t2 - t).to_i.abs 
    # raise @timetaken.inspect
  end

  # def default_url_options
  #   { locale: I18n.locale }
  # end

end
