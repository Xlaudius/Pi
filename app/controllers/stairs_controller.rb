class StairsController < ApplicationController
  before_action :set_stair, only: [:show, :edit, :update, :destroy]
  def index
    @stairs = Stair.all
  end

  def show
  end

  def new
    @stair = Stair.new
  end

  def edit
  end

  def create
    @stair = Stair.new(stair_params)

    respond_to do |format|
      if @stair.save
        format.html { redirect_to @stair, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @stair }
      else
        format.html { render :new }
        format.json { render json: @stair.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @stair.update(stair_params)
          format.html { redirect_to @stair, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @stair }
        else
          format.html { render :edit }
          format.json { render json: @stair.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @stair.destroy
    respond_to do |format|
      format.html { redirect_to stair_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stair
      @stairs = Stair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stair_params
      params.require(:stair).permit(:name, :value)
    end
end