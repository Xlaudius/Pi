class PropertyRolsController < ApplicationController
  before_action :set_property_rol, only: [:show, :edit, :update, :destroy]
  def index
    @property_rols = PropertyRol.all
  end

  def show
  end

  def new
    @property_rol = PropertyRol.new
  end

  def edit
  end

  def create
    @property_rol = PropertyRol.new(property_rol_params)

    respond_to do |format|
      if @property_rol.save
        format.html { redirect_to @property_rol, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_rol }
      else
        format.html { render :new }
        format.json { render json: @property_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_rol.update(property_rol_params)
          format.html { redirect_to @property_rol, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_rol }
        else
          format.html { render :edit }
          format.json { render json: @property_rol.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_rol.destroy
    respond_to do |format|
      format.html { redirect_to property_rol_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_rol
      @property_rols = PropertyRol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_rol_params
      params.require(:property_rol).permit(:block, :predial, :provinces_id, :properties_id)
    end
end