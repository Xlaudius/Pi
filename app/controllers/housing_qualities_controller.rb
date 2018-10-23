class HousingQualitiesController < ApplicationController
  before_action :set_housing_quality, only: [:show, :edit, :update, :destroy]

  def index
    @housing_qualities = HousingQuality.all
  end

  def show  
  end


  def new
    @housing_quality = HousingQuality.new
  end

  def edit
  end

  def create
    @housing_quality = HousingQuality.new(housing_quality_params)

    respond_to do |format|
      if @housing_quality.save
        format.html { redirect_to @housing_quality, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @housing_quality }
      else
        format.html { render :new }
        format.json { render json: @housing_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @housing_quality.update(housing_quality_params)
        format.html { redirect_to @housing_quality, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @housing_quality }
      else
        format.html { render :edit }
        format.json { render json: @housing_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @housing_quality.destroy
    respond_to do |format|
      format.html { redirect_to housing_quality_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing_quality
      @housing_quality = HousingQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_quality_params
      params.require(:housing_quality).permit(:name,:value)
    end
end