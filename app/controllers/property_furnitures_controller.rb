class PropertyFurnituresController < ApplicationController
  before_action :set_property_furniture, only: [:show, :edit, :update, :destroy]

  def index
    @property_furnitures = PropertyFurniture.all
  end

  def show  
  end


  def new
    @property_furniture = PropertyFurniture.new
  end

  def edit
  end

  def create
    @property_furniture = PropertyFurniture.new(property_furniture_params)

    respond_to do |format|
      if @property_furniture.save
        format.html { redirect_to @property_furniture, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_furniture }
      else
        format.html { render :new }
        format.json { render json: @property_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_furniture.update(property_furniture_params)
        format.html { redirect_to @property_furniture, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_furniture }
      else
        format.html { render :edit }
        format.json { render json: @property_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_furniture.destroy
    respond_to do |format|
      format.html { redirect_to property_furniture_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_furniture
      @property_furniture = PropertyFurniture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_furniture_params
      params.require(:property_furniture).permit(:furnitures_id,:properties_id,:furniture_covers_id)
    end
end