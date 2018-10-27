class PropertyGasController < ApplicationController
  before_action :set_property_ga, only: [:show, :edit, :update, :destroy]

  def index
    @property_gas = PropertyGa.all
  end

  def show  
  end


  def new
    @property_ga = PropertyGa.new
  end

  def edit
  end

  def create
    @property_ga = PropertyGa.new(property_ga_params)

    respond_to do |format|
      if @property_ga.save
        format.html { redirect_to @property_ga, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_ga }
      else
        format.html { render :new }
        format.json { render json: @property_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_ga.update(property_ga_params)
        format.html { redirect_to @property_ga, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_ga }
      else
        format.html { render :edit }
        format.json { render json: @property_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_ga.destroy
    respond_to do |format|
      format.html { redirect_to property_ga_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_ga
      @property_ga = PropertyGa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_ga_params
      params.require(:property_ga).permit(:properties_id,:gas_id)
    end
end