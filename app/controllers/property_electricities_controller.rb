class PropertyElectricitiesController < ApplicationController
  before_action :set_property_electricity, only: [:show, :edit, :update, :destroy]

  def index
    @property_electricities = PropertyElectricity.all
  end

  def show  
  end


  def new
    @property_electricity = PropertyElectricity.new
  end

  def edit
  end

  def create
    @property_electricity = PropertyElectricity.new(property_electricity_params)

    respond_to do |format|
      if @property_electricity.save
        format.html { redirect_to @property_electricity, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_electricity }
      else
        format.html { render :new }
        format.json { render json: @property_electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_electricity.update(property_electricity_params)
        format.html { redirect_to @property_electricity, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_electricity }
      else
        format.html { render :edit }
        format.json { render json: @property_electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_electricity.destroy
    respond_to do |format|
      format.html { redirect_to property_electricity_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_electricity
      @property_electricity = PropertyElectricity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_electricity_params
      params.require(:property_electricity).permit(:electricities_id,:properties_id)
    end
end