class AdvertiserSessionController < ApplicationController

  def create
    advertiser = Advertiser.find_by_email(params[:email])
    if advertiser && advertiser.authenticate(params[:password])
      session[:advertiser_id] = advertiser.id
      redirect_to root_url, :notice=>"Logado"
    else
      flash.now.alert ="Email ou senha invalidos"
      render "new"
    end 
  end

  def destroy
    session[:advertiser_id] = nil
    redirect_to root_url, :notice=>"DesLogado"
  end
end
