class WaterRainDuctsController < ApplicationController
  before_action :set_water_rain_duct, only: [:show, :edit, :update, :destroy]
  def index
    @water_rain_duct = WaterRainDuct.all
  end

  def show
  end

  def new
    @water_rain_ducts = WaterRainDuct.new
  end

  def edit
  end

  def create
    @water_rain_duct = WaterRainDuct.new(water_rain_duct_params)

    respond_to do |format|
      if @water_rain_duct.save
        format.html { redirect_to @water_rain_duct, notice: 'Water Rain Duct was successfully created.' }
        format.json { render :show, status: :created, location: @water_rain_duct }
      else
        format.html { render :new }
        format.json { render json: @water_rain_duct.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @water_rain_duct.update(water_rain_duct_params)
          format.html { redirect_to @water_rain_duct, notice: 'Water Rain Duct was successfully updated.' }
          format.json { render :show, status: :ok, location: @water_rain_duct }
        else
          format.html { render :edit }
          format.json { render json: @water_rain_duct.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @water_rain_duct.destroy
    respond_to do |format|
      format.html { redirect_to water_rain_ducts_url, notice: 'Water Rain Duct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_rain_duct
      @water_rain_ducts = WaterRainDuct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_rain_duct_params
      params.require(:water_rain_duct).permit(:name, :value)
    end
end