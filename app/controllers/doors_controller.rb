class DoorsController < ApplicationController
  before_action :set_door, only: [:show, :edit, :update, :destroy]

  def index
    @doors = Door.all
  end

  def show  
  end


  def new
    @door = Door.new
  end

  def edit
  end

  def create
    @door = Door.new(door_params)

    respond_to do |format|
      if @door.save
        format.html { redirect_to @door, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @door }
      else
        format.html { render :new }
        format.json { render json: @door.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @door.update(door_params)
        format.html { redirect_to @door, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @door }
      else
        format.html { render :edit }
        format.json { render json: @door.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @door.destroy
    respond_to do |format|
      format.html { redirect_to door_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door
      @door = Door.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_params
      params.require(:door).permit(:name,:value)
    end
end