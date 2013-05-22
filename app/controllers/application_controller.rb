class ApplicationController < ActionController::Base
  before_filter :authenticate_user
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

  def authenticate_user
    redirect_to root_url unless authenticated_user?
  end

  def authenticated_user?
    !session[:user_id].nil? and !current_user.nil?
  end
end
