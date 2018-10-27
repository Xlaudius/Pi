class DrinkingWatersController < ApplicationController
  before_action :set_drinking_water, only: [:show, :edit, :update, :destroy]

  def index
    @drinking_waters = DrinkingWater.all
  end

  def show  
  end


  def new
    @drinking_water = DrinkingWater.new
  end

  def edit
  end

  def create
    @drinking_water = DrinkingWater.new(drinking_water_params)

    respond_to do |format|
      if @drinking_water.save
        format.html { redirect_to @drinking_water, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @drinking_water }
      else
        format.html { render :new }
        format.json { render json: @drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @drinking_water.update(drinking_water_params)
        format.html { redirect_to @drinking_water, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @drinking_water }
      else
        format.html { render :edit }
        format.json { render json: @drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @drinking_water.destroy
    respond_to do |format|
      format.html { redirect_to drinking_water_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water
      @drinking_water = DrinkingWater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drinking_water_params
      params.require(:drinking_water).permit(:name,:value)
    end
end