#-*- coding: utf-8 -*-
class PlantoesController < ApplicationController
  # GET /plantoes
  # GET /plantoes.json
  def index
    @plantoes = Plantao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plantoes }
    end
  end

  # GET /plantoes/1
  # GET /plantoes/1.json
  def show
    @plantao = Plantao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plantao }
    end
  end

  # GET /plantoes/new
  # GET /plantoes/new.json
  def new
    @plantao = Plantao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plantao }
    end
  end

  # GET /plantoes/1/edit
  def edit
    @plantao = Plantao.find(params[:id])
  end

  # POST /plantoes
  # POST /plantoes.json
  def create
    @plantao = Plantao.new(params[:plantao])

    respond_to do |format|
      if @plantao.save
        format.html { redirect_to @plantao, notice: "Plantão anunciado com sucesso." }
        format.json { render json: @plantao, status: :created, location: @plantao }
      else
        format.html { render action: "new" }
        format.json { render json: @plantao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plantoes/1
  # PUT /plantoes/1.json
  def update
    @plantao = Plantao.find(params[:id])

    respond_to do |format|
      if @plantao.update_attributes(params[:plantao])
        format.html { redirect_to @plantao, notice: 'Anúncio de plantão atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plantao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantoes/1
  # DELETE /plantoes/1.json
  def destroy
    @plantao = Plantao.find(params[:id])
    @plantao.destroy

    respond_to do |format|
      format.html { redirect_to plantoes_url }
      format.json { head :no_content }
    end
  end
end
