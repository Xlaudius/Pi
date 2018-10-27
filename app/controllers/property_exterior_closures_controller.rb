class PropertyExteriorClosuresController < ApplicationController
  before_action :set_property_exterior_closure, only: [:show, :edit, :update, :destroy]

  def index
    @property_exterior_closures = PropertyExteriorClosure.all
  end

  def show  
  end


  def new
    @property_exterior_closure = PropertyExteriorClosure.new
  end

  def edit
  end

  def create
    @property_exterior_closure = PropertyExteriorClosure.new(property_exterior_closure_params)

    respond_to do |format|
      if @property_exterior_closure.save
        format.html { redirect_to @property_exterior_closure, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_exterior_closure }
      else
        format.html { render :new }
        format.json { render json: @property_exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_exterior_closure.update(property_exterior_closure_params)
        format.html { redirect_to @property_exterior_closure, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_exterior_closure }
      else
        format.html { render :edit }
        format.json { render json: @property_exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_exterior_closure.destroy
    respond_to do |format|
      format.html { redirect_to property_exterior_closure_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_exterior_closure
      @property_exterior_closure = PropertyExteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_exterior_closure_params
      params.require(:property_exterior_closure).permit(:properties_id,:exterior_closures_id,:other)
    end
end