#-*- coding: utf-8 -*-
class AdvertiserPlantoesController < ApplicationController
  def index
    plantoes = Advertiser.find(params[:advertiser_id]).plantoes

    @plantoes_grouped = group_by_when_and_how_long(plantoes)

    respond_to do |format|
      format.html
      format.json { render json: @plantoes_grouped }
    end
  end
end
