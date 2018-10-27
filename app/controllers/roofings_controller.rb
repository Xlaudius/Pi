class RoofingsController < ApplicationController
  before_action :set_roofing, only: [:show, :edit, :update, :destroy]
  def index
    @roofings = Roofing.all
  end

  def show
  end

  def new
    @roofing = Roofing.new
  end

  def edit
  end

  def create
    @roofing = Roofing.new(roofing_params)

    respond_to do |format|
      if @roofing.save
        format.html { redirect_to @roofing, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @roofing }
      else
        format.html { render :new }
        format.json { render json: @roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @roofing.update(roofing_params)
          format.html { redirect_to @roofing, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @roofing }
        else
          format.html { render :edit }
          format.json { render json: @roofing.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @roofing.destroy
    respond_to do |format|
      format.html { redirect_to roofing_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roofing
      @roofings = Roofing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roofing_params
      params.require(:roofing).permit(:name, :value)
    end
end