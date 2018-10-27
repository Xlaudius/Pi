class PavementsController < ApplicationController
  before_action :set_pavement, only: [:show, :edit, :update, :destroy]

  def index
    @pavements = Pavement.all
  end

  def show  
  end


  def new
    @pavement = Pavement.new
  end

  def edit
  end

  def create
    @pavement = Pavement.new(pavement_params)

    respond_to do |format|
      if @pavement.save
        format.html { redirect_to @pavement, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @pavement }
      else
        format.html { render :new }
        format.json { render json: @pavement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pavement.update(pavement_params)
        format.html { redirect_to @pavement, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @pavement }
      else
        format.html { render :edit }
        format.json { render json: @pavement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @pavement.destroy
    respond_to do |format|
      format.html { redirect_to pavement_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pavement
      @pavement = Pavement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pavement_params
      params.require(:pavement).permit(:name,:value)
    end
end