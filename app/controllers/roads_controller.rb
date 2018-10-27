class RoadsController < ApplicationController
  before_action :set_road, only: [:show, :edit, :update, :destroy]
  def index
    @roads = Road.all
  end

  def show
  end

  def new
    @road = Road.new
  end

  def edit
  end

  def create
    @road = Road.new(road_params)

    respond_to do |format|
      if @road.save
        format.html { redirect_to @road, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @road }
      else
        format.html { render :new }
        format.json { render json: @road.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @road.update(road_params)
          format.html { redirect_to @road, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @road }
        else
          format.html { render :edit }
          format.json { render json: @road.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @road.destroy
    respond_to do |format|
      format.html { redirect_to road_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road
      @roads = Road.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def road_params
      params.require(:road).permit(:name, :value)
    end
end