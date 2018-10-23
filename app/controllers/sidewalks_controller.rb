class SidewalksController < ApplicationController
  before_action :set_side_walk, only: [:show, :edit, :update, :destroy]
  def index
    @side_walks = SideWalk.all
  end

  def show
  end

  def new
    @side_walk = SideWalk.new
  end

  def edit
  end

  def create
    @side_walk = SideWalk.new(side_walk_params)

    respond_to do |format|
      if @side_walk.save
        format.html { redirect_to @side_walk, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @side_walk }
      else
        format.html { render :new }
        format.json { render json: @side_walk.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @side_walk.update(side_walk_params)
          format.html { redirect_to @side_walk, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @side_walk }
        else
          format.html { render :edit }
          format.json { render json: @side_walk.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @side_walk.destroy
    respond_to do |format|
      format.html { redirect_to side_walk_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side_walk
      @side_walks = SideWalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_walk_params
      params.require(:side_walk).permit(:name, :value)
    end
end
