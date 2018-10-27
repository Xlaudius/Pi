class PropertyRoadsController < ApplicationController
  before_action :set_property_road, only: [:show, :edit, :update, :destroy]
  def index
    @property_roads = PropertyRoad.all
  end

  def show
  end

  def new
    @property_road = PropertyRoad.new
  end

  def edit
  end

  def create
    @property_road = PropertyRoad.new(property_road_params)

    respond_to do |format|
      if @property_road.save
        format.html { redirect_to @property_road, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_road }
      else
        format.html { render :new }
        format.json { render json: @property_road.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_road.update(property_road_params)
          format.html { redirect_to @property_road, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_road }
        else
          format.html { render :edit }
          format.json { render json: @property_road.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_road.destroy
    respond_to do |format|
      format.html { redirect_to property_road_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_road
      @property_roads = PropertyRoad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_road_params
      params.require(:property_road).permit(:other, :properties_id, :interior_closures_id)
    end
end