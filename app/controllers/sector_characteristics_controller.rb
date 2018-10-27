class SectorCharacteristicsController < ApplicationController
  before_action :set_sector_characteristic, only: [:show, :edit, :update, :destroy]
  def index
    @sector_characteristics = SectorCharacteristic.all
  end

  def show
  end

  def new
    @sector_charasteristic = SectorCharacteristic.new
  end

  def edit
  end

  def create
    @sector_charasteristic = SectorCharacteristic.new(sector_charasteristic_params)

    respond_to do |format|
      if @sector_charasteristic.save
        format.html { redirect_to @sector_charasteristic, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @sector_charasteristic }
      else
        format.html { render :new }
        format.json { render json: @sector_charasteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @sector_charasteristic.update(sector_charasteristic_params)
          format.html { redirect_to @sector_charasteristic, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @sector_charasteristic }
        else
          format.html { render :edit }
          format.json { render json: @sector_charasteristic.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @sector_charasteristic.destroy
    respond_to do |format|
      format.html { redirect_to sector_charasteristic_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector_characteristic
      @sector_characteristics = SectorCharacteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_charasteristic_params
      params.require(:sector_charasteristic).permit(:name, :value)
    end
end