class PropertyEnlarQualitiesController < ApplicationController
  before_action :set_property_enlar_quality, only: [:show, :edit, :update, :destroy]

  def index
    @property_enlar_qualities = PropertyEnlarQuality.all
  end

  def show  
  end


  def new
    @property_enlar_quality = PropertyEnlarQuality.new
  end

  def edit
  end

  def create
    @property_enlar_quality = PropertyEnlarQuality.new(property_enlar_quality_params)

    respond_to do |format|
      if @property_enlar_quality.save
        format.html { redirect_to @property_enlar_quality, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_enlar_quality }
      else
        format.html { render :new }
        format.json { render json: @property_enlar_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_enlar_quality.update(property_enlar_quality_params)
        format.html { redirect_to @property_enlar_quality, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_enlar_quality }
      else
        format.html { render :edit }
        format.json { render json: @property_enlar_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_enlar_quality.destroy
    respond_to do |format|
      format.html { redirect_to property_enlar_quality_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_enlar_quality
      @property_enlar_quality = PropertyEnlarQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_enlar_quality_params
      params.require(:property_enlar_quality).permit(:enlargements_qualities_id,:properties_id)
    end
end