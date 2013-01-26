class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to request.env['HTTP_REFERER']
  end

  def destroy
    session[:user_id] = nil
    redirect_to request.env['HTTP_REFERER'], :notice => "Signed out!"
  end
end
