class PropertyMaintenancesController < ApplicationController
  before_action :set_property_maintenance, only: [:show, :edit, :update, :destroy]
  def index
    @property_maintenances = PropertyMaintenance.all
  end

  def show
  end

  def new
    @property_maintenance = PropertyMaintenance.new
  end

  def edit
  end

  def create
    @property_maintenance = PropertyMaintenance.new(property_maintenance_params)

    respond_to do |format|
      if @property_maintenance.save
        format.html { redirect_to @property_maintenance, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_maintenance }
      else
        format.html { render :new }
        format.json { render json: @property_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_maintenance.update(property_maintenance_params)
          format.html { redirect_to @property_maintenance, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_maintenance }
        else
          format.html { render :edit }
          format.json { render json: @property_maintenance.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_maintenance.destroy
    respond_to do |format|
      format.html { redirect_to property_maintenance_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_maintenance
      @property_maintenances = PropertyMaintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_maintenance_params
      params.require(:property_maintenance).permit(:maintenances_id, :properties_id)
    end
end