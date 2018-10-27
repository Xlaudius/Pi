class PropertyShedsController < ApplicationController
  before_action :set_property_shed, only: [:show, :edit, :update, :destroy]
  def index
    @property_sheds = PropertyShed.all
  end

  def show
  end

  def new
    @property_shed = PropertyShed.new
  end

  def edit
  end

  def create
    @property_shed = PropertyShed.new(property_shed_params)

    respond_to do |format|
      if @property_shed.save
        format.html { redirect_to @property_shed, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_shed }
      else
        format.html { render :new }
        format.json { render json: @property_shed.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_shed.update(property_shed_params)
          format.html { redirect_to @property_shed, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_shed }
        else
          format.html { render :edit }
          format.json { render json: @property_shed.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_shed.destroy
    respond_to do |format|
      format.html { redirect_to property_shed_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_shed
      @property_sheds = PropertyShed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_shed_params
      params.require(:property_shed).permit(:sheds_id, :properties_id)
    end
end