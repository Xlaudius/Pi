class PropertyTypesController < ApplicationController
  before_action :set_property_type, only: [:show, :edit, :update, :destroy]
  def index
    @property_types = PropertyType.all
  end

  def show
  end

  def new
    @property_type = PropertyType.new
  end

  def edit
  end

  def create
    @property_type = PropertyType.new(property_type_params)

    respond_to do |format|
      if @property_type.save
        format.html { redirect_to @property_type, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_type }
      else
        format.html { render :new }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_type.update(property_type_params)
          format.html { redirect_to @property_type, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_type }
        else
          format.html { render :edit }
          format.json { render json: @property_type.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_type.destroy
    respond_to do |format|
      format.html { redirect_to property_type_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_type
      @property_types = PropertyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_type_params
      params.require(:property_type).permit(:name)
    end
end