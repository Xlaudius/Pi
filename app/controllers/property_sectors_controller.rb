class PropertySectorsController < ApplicationController
  before_action :set_property_sector, only: [:show, :edit, :update, :destroy]
  def index
    @property_sectors = PropertySector.all
  end

  def show
  end

  def new
    @property_sector = PropertySector.new
  end

  def edit
  end

  def create
    @property_sector = PropertySector.new(property_sector_params)

    respond_to do |format|
      if @property_sector.save
        format.html { redirect_to @property_sector, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_sector }
      else
        format.html { render :new }
        format.json { render json: @property_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_sector.update(property_sector_params)
          format.html { redirect_to @property_sector, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_sector }
        else
          format.html { render :edit }
          format.json { render json: @property_sector.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_sector.destroy
    respond_to do |format|
      format.html { redirect_to property_sector_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sector
      @property_sectors = PropertySector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sector_params
      params.require(:property_sector).permit(:distancia, :properties_id, :sectors_id)
    end
end
