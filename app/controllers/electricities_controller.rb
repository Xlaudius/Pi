class ElectricitiesController < ApplicationController
  before_action :set_electricity, only: [:show, :edit, :update, :destroy]

  def index
    @electricities = Electricity.all
  end

  def show  
  end


  def new
    @electricity = Electricity.new
  end

  def edit
  end

  def create
    @electricity = Electricity.new(electricity_params)

    respond_to do |format|
      if @electricity.save
        format.html { redirect_to @electricity, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @electricity }
      else
        format.html { render :new }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @electricity.update(electricity_params)
        format.html { redirect_to @electricity, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @electricity }
      else
        format.html { render :edit }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @electricity.destroy
    respond_to do |format|
      format.html { redirect_to electricity_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity
      @electricity = Electricity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electricity_params
      params.require(:electricity).permit(:name,:value)
    end
end