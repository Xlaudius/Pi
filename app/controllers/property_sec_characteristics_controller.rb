class PropertySecCharacteristicsController < ApplicationController
  before_action :set_propery_sec_characteristic, only: [:show, :edit, :update, :destroy]
  def index
    @property_sec_characteristics = PropertySecCharacteristic.all
  end

  def show
  end

  def new
    @property_sec_characteristic = PropertySecCharacteristic.new
  end

  def edit
  end

  def create
    @property_sec_characteristic = PropertySecCharacteristic.new(property_sec_characteristic_params)

    respond_to do |format|
      if @property_sec_characteristic.save
        format.html { redirect_to @property_sec_characteristic, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_sec_characteristic }
      else
        format.html { render :new }
        format.json { render json: @property_sec_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_sec_characteristic.update(property_sec_characteristic_params)
          format.html { redirect_to @property_sec_characteristic, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_sec_characteristic }
        else
          format.html { render :edit }
          format.json { render json: @property_sec_characteristic.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_sec_characteristic.destroy
    respond_to do |format|
      format.html { redirect_to property_sec_characteristic_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propery_sec_characteristic
      @property_sec_characteristics = PropertySecCharacteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sec_characteristic_params
      params.require(:property_sec_characteristic).permit(:properties_id, :sector_characteristics_id)
    end
end
