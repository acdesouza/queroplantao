class AdvertisersController < ApplicationController
  # GET /advertisers/1
  # GET /advertisers/1.json
  def show
    @advertiser = Advertiser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advertiser }
    end
  end

  # GET /advertisers/new
  # GET /advertisers/new.json
  def new
    @advertiser = Advertiser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advertiser }
    end
  end

  # GET /advertisers/1/edit
  def edit
    @advertiser = Advertiser.find(params[:id])
  end

  # POST /advertisers
  # POST /advertisers.json
  def create
    @advertiser = Advertiser.new(params[:advertiser])

    respond_to do |format|
      if @advertiser.save
        format.html { redirect_to @advertiser, notice: 'Advertiser was successfully created.' }
        format.json { render json: @advertiser, status: :created, location: @advertiser }
      else
        format.html { render action: "new" }
        format.json { render json: @advertiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advertisers/1
  # PUT /advertisers/1.json
  def update
    @advertiser = Advertiser.find(params[:id])

    respond_to do |format|
      if @advertiser.update_attributes(params[:advertiser])
        format.html { redirect_to @advertiser, notice: 'Advertiser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advertiser.errors, status: :unprocessable_entity }
      end
    end
  end
end
