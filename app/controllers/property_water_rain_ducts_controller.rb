class PropertyWaterRainDuctsController < ApplicationController
  before_action :set_property_water_rain_duct, only: [:show, :edit, :update, :destroy]
  def index
    @property_water_rain_ducts = PropertyWaterRainDuct.all
  end

  def show
  end

  def new
    @property_water_rain_duct = PropertyWaterRainDuct.new
  end

  def edit
  end

  def create
    @property_water_rain_duct = PropertyWaterRainDuct.new(property_water_rain_duct_params)

    respond_to do |format|
      if @property_water_rain_duct.save
        format.html { redirect_to @property_water_rain_duct, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_water_rain_duct }
      else
        format.html { render :new }
        format.json { render json: @property_water_rain_duct.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_water_rain_duct.update(property_water_rain_duct_params)
          format.html { redirect_to @property_water_rain_duct, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_water_rain_duct }
        else
          format.html { render :edit }
          format.json { render json: @property_water_rain_duct.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_water_rain_duct.destroy
    respond_to do |format|
      format.html { redirect_to property_water_rain_duct_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_water_rain_duct
      @property_water_rain_ducts = PropertyWaterRainDuct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_water_rain_duct_params
      params.require(:property_water_rain_duct).permit(:properties_id, :water_rain_ducts_id)
    end
end