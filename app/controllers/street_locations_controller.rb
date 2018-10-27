class StreetLocationsController < ApplicationController
  before_action :set_street_location, only: [:show, :edit, :update, :destroy]
  def index
    @street_locations = StreetLocation.all
  end

  def show
  end

  def new
    @street_location = StreetLocation.new
  end

  def edit
  end

  def create
    @street_location = StreetLocation.new(street_location_params)

    respond_to do |format|
      if @street_location.save
        format.html { redirect_to @street_location, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @street_location }
      else
        format.html { render :new }
        format.json { render json: @street_location.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @street_location.update(street_location_params)
          format.html { redirect_to @street_location, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @street_location }
        else
          format.html { render :edit }
          format.json { render json: @street_location.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @street_location.destroy
    respond_to do |format|
      format.html { redirect_to street_location_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_street_location
      @street_locations = StreetLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def street_location_params
      params.require(:street_location).permit(:name, :value)
    end
end