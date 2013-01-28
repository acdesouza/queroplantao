class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to (request.env['HTTP_REFERER'] or root_url)
  end

  def destroy
    session[:user_id] = nil
    redirect_to (request.env['HTTP_REFERER'] or root_url), :notice => "Signed out!"
  end
end
