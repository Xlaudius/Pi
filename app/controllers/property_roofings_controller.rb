class PropertyRoofingsController < ApplicationController
  before_action :set_property_roofing, only: [:show, :edit, :update, :destroy]
  def index
    @property_roofings = PropertyRoofing.all
  end

  def show
  end

  def new
    @property_roofing = PropertyRoofing.new
  end

  def edit
  end

  def create
    @property_roofing = PropertyRoofing.new(property_roofing_params)

    respond_to do |format|
      if @property_roofing.save
        format.html { redirect_to @property_roofing, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_roofing }
      else
        format.html { render :new }
        format.json { render json: @property_roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_roofing.update(property_roofing_params)
          format.html { redirect_to @property_roofing, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_roofing }
        else
          format.html { render :edit }
          format.json { render json: @property_roofing.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_roofing.destroy
    respond_to do |format|
      format.html { redirect_to property_roofing_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_roofing
      @property_roofings = PropertyRoofing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_roofing_params
      params.require(:property_roofing).permit(:properties_id, :roofings_id)
    end
end
