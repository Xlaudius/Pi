class PropertyDoorsController < ApplicationController
  before_action :set_property_door, only: [:show, :edit, :update, :destroy]

  def index
    @property_doors = PropertyDoor.all
  end

  def show  
  end


  def new
    @property_door = PropertyDoor.new
  end

  def edit
  end

  def create
    @property_door = PropertyDoor.new(property_door_params)

    respond_to do |format|
      if @property_door.save
        format.html { redirect_to @property_door, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_door }
      else
        format.html { render :new }
        format.json { render json: @property_door.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_door.update(property_door_params)
        format.html { redirect_to @property_door, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_door }
      else
        format.html { render :edit }
        format.json { render json: @property_door.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_door.destroy
    respond_to do |format|
      format.html { redirect_to property_door_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_door
      @property_door = PropertyDoor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_door_params
      params.require(:property_door).permit(:doors_id,:door_frames_id,:properties_id)
    end
end