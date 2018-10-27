class PropertyInteriorClosuresController < ApplicationController
  before_action :set_property_interior_closure, only: [:show, :edit, :update, :destroy]
  def index
    @property_interior_closures = PropertyInteriorClosure.all
  end

  def show
  end

  def new
    @property_interior_closure = PropertyInteriorClosure.new
  end

  def edit
  end

  def create
    @property_interior_closure = PropertyInteriorClosure.new(property_interior_closure_params)

    respond_to do |format|
      if @property_interior_closure.save
        format.html { redirect_to @property_interior_closure, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_interior_closure }
      else
        format.html { render :new }
        format.json { render json: @property_interior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_interior_closure.update(property_interior_closure_params)
          format.html { redirect_to @property_interior_closure, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_interior_closure }
        else
          format.html { render :edit }
          format.json { render json: @property_interior_closure.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_interior_closure.destroy
    respond_to do |format|
      format.html { redirect_to property_interior_closure_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_interior_closure
      @property_interior_closures = PropertyInteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_interior_closure_params
      params.require(:property_interior_closure).permit(:other, :properties_id, :interior_closures_id)
    end
end