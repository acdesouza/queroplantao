class RemunerationsController < ApplicationController
  # GET /remunerations
  # GET /remunerations.json
  def index
    @remunerations = Remuneration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @remunerations }
    end
  end

  # GET /remunerations/1
  # GET /remunerations/1.json
  def show
    @remuneration = Remuneration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @remuneration }
    end
  end

  # GET /remunerations/new
  # GET /remunerations/new.json
  def new
    @remuneration = Remuneration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @remuneration }
    end
  end

  # GET /remunerations/1/edit
  def edit
    @remuneration = Remuneration.find(params[:id])
  end

  # POST /remunerations
  # POST /remunerations.json
  def create
    @remuneration = Remuneration.new(params[:remuneration])

    respond_to do |format|
      if @remuneration.save
        format.html { redirect_to @remuneration, notice: 'Remuneration was successfully created.' }
        format.json { render json: @remuneration, status: :created, location: @remuneration }
      else
        format.html { render action: "new" }
        format.json { render json: @remuneration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /remunerations/1
  # PUT /remunerations/1.json
  def update
    @remuneration = Remuneration.find(params[:id])

    respond_to do |format|
      if @remuneration.update_attributes(params[:remuneration])
        format.html { redirect_to @remuneration, notice: 'Remuneration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @remuneration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remunerations/1
  # DELETE /remunerations/1.json
  def destroy
    @remuneration = Remuneration.find(params[:id])
    @remuneration.destroy

    respond_to do |format|
      format.html { redirect_to remunerations_url }
      format.json { head :no_content }
    end
  end
end
