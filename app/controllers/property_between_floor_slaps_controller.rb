class PropertyBetweenFloorSlapsController < ApplicationController
  before_action :set_property_between_floor_slap, only: [:show, :edit, :update, :destroy]

  def index
    @property_between_floor_slaps = PropertyBetweenFloorSlap.all
  end

  def show  
  end


  def new
    @property_between_floor_slap = PropertyBetweenFloorSlap.new
  end

  def edit
  end

  def create
    @property_between_floor_slap = PropertyBetweenFloorSlap.new(property_between_floor_slap_params)
    

    respond_to do |format|
      if @property_between_floor_slap.save
        format.html { redirect_to @property_between_floor_slap, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_between_floor_slap }
      else
        format.html { render :new }
        format.json { render json: @property_between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_between_floor_slap.update(property_between_floor_slap_params)
        format.html { redirect_to @property_between_floor_slap, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_between_floor_slap }
      else
        format.html { render :edit }
        format.json { render json: @property_between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_between_floor_slap.destroy
    respond_to do |format|
      format.html { redirect_to property_between_floor_slap_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_between_floor_slap
      @property_between_floor_slap = PropertyBetweenFloorSlap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_between_floor_slap_params
      params.require(:property_between_floor_slap).permit(:between_floor_slaps_id,:properties_id)
    end
end