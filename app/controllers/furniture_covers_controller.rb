class FurnitureCoversController < ApplicationController
  before_action :set_furniture_cover, only: [:show, :edit, :update, :destroy]

  def index
    @furniture_covers = FurnitureCover.all
  end

  def show  
  end


  def new
    @furniture_cover = FurnitureCover.new
  end

  def edit
  end

  def create
    @furniture_cover = FurnitureCover.new(furniture_cover_params)

    respond_to do |format|
      if @furniture_cover.save
        format.html { redirect_to @furniture_cover, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @furniture_cover }
      else
        format.html { render :new }
        format.json { render json: @furniture_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @furniture_cover.update(furniture_cover_params)
        format.html { redirect_to @furniture_cover, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture_cover }
      else
        format.html { render :edit }
        format.json { render json: @furniture_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @furniture_cover.destroy
    respond_to do |format|
      format.html { redirect_to furniture_cover_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_cover
      @furniture_cover = FurnitureCover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furniture_cover_params
      params.require(:furniture_cover).permit(:name,:value)
    end
end