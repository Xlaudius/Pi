class QualitiesController < ApplicationController
  before_action :set_quality, only: [:show, :edit, :update, :destroy]
  def index
    @qualities = Quality.all
  end

  def show
  end

  def new
    @quality = Quality.new
  end

  def edit
  end

  def create
    @quality = Quality.new(quality_params)

    respond_to do |format|
      if @quality.save
        format.html { redirect_to @quality, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @quality }
      else
        format.html { render :new }
        format.json { render json: @quality.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @quality.update(quality_params)
          format.html { redirect_to @quality, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @quality }
        else
          format.html { render :edit }
          format.json { render json: @quality.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @quality.destroy
    respond_to do |format|
      format.html { redirect_to quality_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quality
      @qualities = Quality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quality_params
      params.require(:quality).permit(:name, :value)
    end
end
