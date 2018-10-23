class GasController < ApplicationController
  before_action :set_ga, only: [:show, :edit, :update, :destroy]

  def index
    @gas = Ga.all
  end

  def show  
  end


  def new
    @ga = Ga.new
  end

  def edit
  end

  def create
    @ga = Ga.new(ga_params)

    respond_to do |format|
      if @ga.save
        format.html { redirect_to @ga, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @ga }
      else
        format.html { render :new }
        format.json { render json: @ga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ga.update(ga_params)
        format.html { redirect_to @ga, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @ga }
      else
        format.html { render :edit }
        format.json { render json: @ga.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @ga.destroy
    respond_to do |format|
      format.html { redirect_to ga_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ga
      @ga = Ga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ga_params
      params.require(:ga).permit(:name,:value)
    end
end