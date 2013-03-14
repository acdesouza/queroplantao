#-*- coding: utf-8 -*-
class AdvertiserPlantoesController < ApplicationController
  def index
    @plantoes = Advertiser.find(params[:advertiser_id]).plantoes

    respond_to do |format|
      format.html
      format.json { render json: @plantoes }
    end
  end
end
