class ShedsController < ApplicationController
  before_action :set_shed, only: [:show, :edit, :update, :destroy]
  def index
    @sheds = Shed.all
  end

  def show
  end

  def new
    @shed = Shed.new
  end

  def edit
  end

  def create
    @shed = Shed.new(shed_params)

    respond_to do |format|
      if @shed.save
        format.html { redirect_to @shed, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @shed }
      else
        format.html { render :new }
        format.json { render json: @shed.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @shed.update(shed_params)
          format.html { redirect_to @shed, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @shed }
        else
          format.html { render :edit }
          format.json { render json: @shed.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @shed.destroy
    respond_to do |format|
      format.html { redirect_to shed_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shed
      @sheds = Shed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shed_params
      params.require(:shed).permit(:name, :value)
    end
end