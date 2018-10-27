class SeweragesController < ApplicationController
  before_action :set_sewerage, only: [:show, :edit, :update, :destroy]
  def index
    @sewerages = Sewerage.all
  end

  def show
  end

  def new
    @sewerage = Sewerage.new
  end

  def edit
  end

  def create
    @sewerage = Sewerage.new(sewerage_params)

    respond_to do |format|
      if @sewerage.save
        format.html { redirect_to @sewerage, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @sewerage }
      else
        format.html { render :new }
        format.json { render json: @sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @sewerage.update(sewerage_params)
          format.html { redirect_to @sewerage, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @sewerage }
        else
          format.html { render :edit }
          format.json { render json: @sewerage.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @sewerage.destroy
    respond_to do |format|
      format.html { redirect_to sewerage_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sewerage
      @sewerages = Sewerage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sewerage_params
      params.require(:sewerage).permit(:name, :value)
    end
end