class BetweenFloorSlapsController < ApplicationController
  before_action :set_between_floor_slap_controller, only: [:show, :edit, :update, :destroy]

  
  def index
    @between_floor_slaps = BetweenFloorSlap.all
  end

  def show  
  end


  def new
    @between_floor_slap = BetweenFloorSlap.new
  end

  def edit
  end

  def create
    @between_floor_slap = BetweenFloorSlap.new(between_floor_slap_params)

    respond_to do |format|
      if @between_floor_slap.save
        format.html { redirect_to @between_floor_slap, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @between_floor_slap }
      else
        format.html { render :new }
        format.json { render json: @between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @between_floor_slap.update(between_floor_slap_params)
        format.html { redirect_to @between_floor_slap, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @between_floor_slap }
      else
        format.html { render :edit }
        format.json { render json: @between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @between_floor_slap.destroy
    respond_to do |format|
      format.html { redirect_to between_floor_slap_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_between_floor_slap
      @between_floor_slap = BetweenFloorSlap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def between_floor_slap_params
      params.require(:between_floor_slap).permit(:name,:value)
    end
end