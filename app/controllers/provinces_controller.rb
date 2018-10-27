class ProvincesController < ApplicationController
  before_action :set_province, only: [:show, :edit, :update, :destroy]
  def index
    @provinces = Province.all
  end

  def show
  end

  def new
    @province = Province.new
  end

  def edit
  end

  def create
    @province = Province.new(province_params)

    respond_to do |format|
      if @province.save
        format.html { redirect_to @province, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @province }
      else
        format.html { render :new }
        format.json { render json: @province.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @province.update(province_params)
          format.html { redirect_to @province, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @province }
        else
          format.html { render :edit }
          format.json { render json: @province.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @province.destroy
    respond_to do |format|
      format.html { redirect_to province_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_province
      @provinces = Province.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def province_params
      params.require(:province).permit(:name, :value)
    end
end
