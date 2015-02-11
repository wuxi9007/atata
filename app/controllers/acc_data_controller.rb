class AccDataController < ApplicationController
  before_action :set_acc_datum, only: [:show, :edit, :update, :destroy]

  # GET /acc_data
  # GET /acc_data.json
  def index
    @acc_data = AccDatum.all
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

  # POST /acc_data
  # POST /acc_data.json
  def create
    @acc_datum = AccDatum.new(acc_datum_params)

    respond_to do |format|
      if @acc_datum.save
        format.html { redirect_to @acc_datum, notice: 'Acc datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acc_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @acc_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acc_data/1
  # PATCH/PUT /acc_data/1.json
  def update
    respond_to do |format|
      if @acc_datum.update(acc_datum_params)
        format.html { redirect_to @acc_datum, notice: 'Acc datum was successfully updated.' }
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
    @acc_datum.destroy
    respond_to do |format|
      format.html { redirect_to acc_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acc_datum
      @acc_datum = AccDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acc_datum_params
      params.require(:acc_datum).permit(:android_id, :time_stamp, :x, :y, :z, :note)
    end
end
