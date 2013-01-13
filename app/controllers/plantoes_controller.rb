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
    @planto = Plantao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planto }
    end
  end

  # GET /plantoes/new
  # GET /plantoes/new.json
  def new
    @planto = Plantao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @planto }
    end
  end

  # GET /plantoes/1/edit
  def edit
    @planto = Plantao.find(params[:id])
  end

  # POST /plantoes
  # POST /plantoes.json
  def create
    @planto = Plantao.new(params[:planto])

    respond_to do |format|
      if @planto.save
        format.html { redirect_to @planto, notice: 'Plantao was successfully created.' }
        format.json { render json: @planto, status: :created, location: @planto }
      else
        format.html { render action: "new" }
        format.json { render json: @planto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plantoes/1
  # PUT /plantoes/1.json
  def update
    @planto = Plantao.find(params[:id])

    respond_to do |format|
      if @planto.update_attributes(params[:planto])
        format.html { redirect_to @planto, notice: 'Plantao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantoes/1
  # DELETE /plantoes/1.json
  def destroy
    @planto = Plantao.find(params[:id])
    @planto.destroy

    respond_to do |format|
      format.html { redirect_to plantoes_url }
      format.json { head :no_content }
    end
  end
end
