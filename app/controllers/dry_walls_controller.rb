class DryWallsController < ApplicationController
  before_action :set_dry_wall, only: [:show, :edit, :update, :destroy]

  def index
    @dry_walls = DryWall.all
  end

  def show  
  end


  def new
    @dry_wall = DryWall.new
  end

  def edit
  end

  def create
    @dry_wall = DryWall.new(dry_wall_params)

    respond_to do |format|
      if @dry_wall.save
        format.html { redirect_to @dry_wall, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @dry_wall }
      else
        format.html { render :new }
        format.json { render json: @dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dry_wall.update(dry_wall_params)
        format.html { redirect_to @dry_wall, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @dry_wall }
      else
        format.html { render :edit }
        format.json { render json: @dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @dry_wall.destroy
    respond_to do |format|
      format.html { redirect_to dry_wall_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dry_wall
      @dry_wall = DryWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dry_wall_params
      params.require(:dry_wall).permit(:name,:value)
    end
end