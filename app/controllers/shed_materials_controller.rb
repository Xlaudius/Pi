class ShedMaterialsController < ApplicationController
  before_action :set_shed_material, only: [:show, :edit, :update, :destroy]
  def index
    @shed_materials = ShedMaterial.all
  end

  def show
  end

  def new
    @shed_material = ShedMaterial.new
  end

  def edit
  end

  def create
    @shed_material = ShedMaterial.new(shed_material_params)

    respond_to do |format|
      if @shed_material.save
        format.html { redirect_to @shed_material, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @shed_material }
      else
        format.html { render :new }
        format.json { render json: @shed_material.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @shed_material.update(shed_material_params)
          format.html { redirect_to @shed_material, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @shed_material }
        else
          format.html { render :edit }
          format.json { render json: @shed_material.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @shed_material.destroy
    respond_to do |format|
      format.html { redirect_to shed_material_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shed_material
      @shed_materials = ShedMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shed_material_params
      params.require(:shed_material).permit(:name, :value)
    end
end