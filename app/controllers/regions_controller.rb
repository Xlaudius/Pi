class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]
  def index
    @regions = Region.all
  end

  def show
  end

  def new
    @region = Region.new
  end

  def edit
  end

  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @region.update(region_params)
          format.html { redirect_to @region, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @region }
        else
          format.html { render :edit }
          format.json { render json: @region.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to region_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @regions = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:name, :value)
    end
end
