class PropertySeweragesController < ApplicationController
  before_action :set_property_sewerage, only: [:show, :edit, :update, :destroy]
  def index
    @property_sewerages = PropertySewerage.all
  end

  def show
  end

  def new
    @property_sewerage = PropertySewerage.new
  end

  def edit
  end

  def create
    @property_sewerage = PropertySewerage.new(property_sewerage_params)

    respond_to do |format|
      if @property_sewerage.save
        format.html { redirect_to @property_sewerage, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_sewerage }
      else
        format.html { render :new }
        format.json { render json: @property_sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_sewerage.update(property_sewerage_params)
          format.html { redirect_to @property_sewerage, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_sewerage }
        else
          format.html { render :edit }
          format.json { render json: @property_sewerage.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_sewerage.destroy
    respond_to do |format|
      format.html { redirect_to property_sewerage_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sewerage
      @property_sewerages = PropertySewerage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sewerage_params
      params.require(:property_sewerage).permit(:properties_id, :sewerages_id, :shed_materials_id)
    end
end
