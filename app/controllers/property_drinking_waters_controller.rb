class PropertyDrinkingWatersController < ApplicationController
  before_action :set_property_drinking_water, only: [:show, :edit, :update, :destroy]

  def index
    @property_drinking_waters = PropertyDrinkingWater.all
  end

  def show  
  end


  def new
    @property_drinking_water = PropertyDrinkingWater.new
  end

  def edit
  end

  def create
    @property_drinking_water = PropertyDrinkingWater.new(property_drinking_water_params)

    respond_to do |format|
      if @property_drinking_water.save
        format.html { redirect_to @property_drinking_water, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_drinking_water }
      else
        format.html { render :new }
        format.json { render json: @property_drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_drinking_water.update(property_drinking_water_params)
        format.html { redirect_to @property_drinking_water, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_drinking_water }
      else
        format.html { render :edit }
        format.json { render json: @property_drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_drinking_water.destroy
    respond_to do |format|
      format.html { redirect_to property_drinking_water_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_drinking_water
      @property_drinking_water = PropertyDrinkingWater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_drinking_water_params
      params.require(:property_drinking_water).permit(:drinking_waters_id,:properties_id)
    end
end