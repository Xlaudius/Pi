class ExteriorClosuresController < ApplicationController
  before_action :set_exterior_closure, only: [:show, :edit, :update, :destroy]

  def index
    @exterior_closures = ExteriorClosure.all
  end

  def show  
  end


  def new
    @exterior_closure = ExteriorClosure.new
  end

  def edit
  end

  def create
    @exterior_closure = ExteriorClosure.new(exterior_closure_params)

    respond_to do |format|
      if @exterior_closure.save
        format.html { redirect_to @exterior_closure, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @exterior_closure }
      else
        format.html { render :new }
        format.json { render json: @exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @exterior_closure.update(exterior_closure_params)
        format.html { redirect_to @exterior_closure, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @exterior_closure }
      else
        format.html { render :edit }
        format.json { render json: @exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @exterior_closure.destroy
    respond_to do |format|
      format.html { redirect_to exterior_closure_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exterior_closure
      @exterior_closure = ExteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exterior_closure_params
      params.require(:exterior_closure).permit(:name,:value)
    end
end
