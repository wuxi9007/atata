class AccDataController < ApplicationController
  before_action :set_acc_datum, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /acc_data
  # GET /acc_data.json
  def index
    @acc_data = AccDatum.all
    respond_to do |format|
      format.html
      format.csv { send_data @acc_data.to_csv }
    end
  end

  # GET /acc_data/1
  # GET /acc_data/1.json
  def show
  end

  # GET /acc_data/new
  def new
    @acc_datum = AccDatum.new
  end

  # GET /acc_data/1/edit
  def edit
  end
  
  def import
      #AccDatum.import(params[:file])
      redirect_to root_url, notice: "Products imported." 
  end
    
  # POST /acc_data
  # POST /acc_data.json
  def create
    rows  = params[:file].split("\n")
    rows.each do |row|
      item        = row.split(",")
      android_id  = item[0]
      time_stamp  = item[1]
      x           = item[2]
      y           = item[3]
      z           = item[4]
      notes       = item[5]
      height      = item[6]
      weight      = item[7]
      if (android_id != 'android_id')
        @acc_datum = AccDatum.new(
            android_id: android_id,
            time_stamp: time_stamp,
            x:          x,
            y:          y,
            z:          z,
            notes:      notes
            height:     height
            weight:     weight
        )
        @acc_datum.save!
      end
    end

    respond_to do |format|
#      if @acc_datum.save
        format.html { redirect_to @acc_datum, notice: 'Your acc_data was successfully created, thank you!' }
        format.json { render action: 'show', status: :created, location: @acc_datum }
#      else
#        format.html { render action: 'new' }
#        format.json { render json: @acc_datum.errors, status: :unprocessable_entity }
#      end
    end  
  end

  
    
  # PATCH/PUT /acc_data/1
  # PATCH/PUT /acc_data/1.json
  def update
    respond_to do |format|
      if @acc_datum.update(acc_datum_params)
        format.html { redirect_to @acc_datum, notice: 'Your acc_data was successfully created, thank you!' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acc_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acc_data/1
  # DELETE /acc_data/1.json
  def destroy
    AccDatum.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to acc_data_url }
      format.json { head :no_content }
    end
  end

  def download
    # send_file 'public/my/download/2296SOverlook.csv'
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acc_datum
      @acc_datum = AccDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acc_datum_params
      params.fetch(:acc_datum, {}).permit(:android_id, :time_stamp, :x, :y, :z, :notes, :height, :weight)
    end
end
