class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_advertiser
    @current_advertiser ||= Advertiser.find(session[:advertiser_id]) if session[:advertiser_id]
  end
  helper_method :current_advertiser
end
