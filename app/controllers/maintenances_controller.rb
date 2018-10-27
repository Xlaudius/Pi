class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :edit, :update, :destroy]

  def index
    @maintenances = Maintenance.all
  end

  def show  
  end


  def new
    @maintenance = Maintenance.new
  end

  def edit
  end

  def create
    @maintenance = Maintenance.new(maintenance_params)

    respond_to do |format|
      if @maintenance.save
        format.html { redirect_to @maintenance, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance }
      else
        format.html { render :new }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @maintenance.update(maintenance_params)
        format.html { redirect_to @maintenance, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance }
      else
        format.html { render :edit }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @maintenance.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance
      @maintenance = Maintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_params
      params.require(:maintenance).permit(:name,:value)
    end
end