class ClosetsController < ApplicationController
  before_action :set_closet, only: [:show, :edit, :update, :destroy]


  def index
    @closets = Closet.all
  end

  def show  
  end


  def new
    @closet = Closet.new
  end

  def edit
  end

  def create
    @closet = Closet.new(closet_params)

    respond_to do |format|
      if @closet.save
        format.html { redirect_to @closet, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @closet }
      else
        format.html { render :new }
        format.json { render json: @closet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @closet.update(closet_params)
        format.html { redirect_to @closet, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @closet }
      else
        format.html { render :edit }
        format.json { render json: @closet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @closet.destroy
    respond_to do |format|
      format.html { redirect_to closet_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closet
      @closet = Closet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def closet_params
      params.require(:closet).permit(:name,:value)
    end
end