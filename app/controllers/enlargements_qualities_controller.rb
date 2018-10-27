class EnlargementsQualitiesController < ApplicationController
  before_action :set_enlargements_quality, only: [:show, :edit, :update, :destroy]

  def index
    @enlargements_qualities = EnlargementsQuality.all
  end

  def show  
  end


  def new
    @enlargements_quality = EnlargementsQuality.new
  end

  def edit
  end

  def create
    @enlargements_quality = EnlargementsQuality.new(enlargements_quality_params)

    respond_to do |format|
      if @enlargements_quality.save
        format.html { redirect_to @enlargements_quality, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @enlargements_quality }
      else
        format.html { render :new }
        format.json { render json: @enlargements_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @enlargements_quality.update(enlargements_quality_params)
        format.html { redirect_to @enlargements_quality, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @enlargements_quality }
      else
        format.html { render :edit }
        format.json { render json: @enlargements_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @enlargements_quality.destroy
    respond_to do |format|
      format.html { redirect_to enlargements_quality_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enlargements_quality
      @enlargements_quality = EnlargementsQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enlargements_quality_params
      params.require(:enlargements_quality).permit(:name,:value)
    end
end