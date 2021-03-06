class PropertyStructuresController < ApplicationController
  before_action :set_property_structure, only: [:show, :edit, :update, :destroy]
  def index
    @property_structures = PropertyStructure.all
  end

  def show
  end

  def new
    @property_structure = PropertyStructure.new
  end

  def edit
  end

  def create
    @property_structure = PropertyStructure.new(property_structure_params)

    respond_to do |format|
      if @property_structure.save
        format.html { redirect_to @property_structure, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_structure }
      else
        format.html { render :new }
        format.json { render json: @property_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_structure.update(property_structure_params)
          format.html { redirect_to @property_structure, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_structure }
        else
          format.html { render :edit }
          format.json { render json: @property_structure.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_structure.destroy
    respond_to do |format|
      format.html { redirect_to property_structure_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_structure
      @property_structures = PropertyStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_structure_params
      params.require(:property_structure).permit(:observations, :properties_id, :structures_id)
    end
end