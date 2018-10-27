class CoversController < ApplicationController
  before_action :set_cover, only: [:show, :edit, :update, :destroy]

  def index
    @covers = Cover.all
  end

  def show  
  end


  def new
    @cover = Cover.new
  end

  def edit
  end

  def create
    @cover = Cover.new(cover_params)

    respond_to do |format|
      if @cover.save
        format.html { redirect_to @cover, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @cover }
      else
        format.html { render :new }
        format.json { render json: @cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cover.update(cover_params)
        format.html { redirect_to @cover, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @cover }
      else
        format.html { render :edit }
        format.json { render json: @cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @cover.destroy
    respond_to do |format|
      format.html { redirect_to cover_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cover
      @cover = Cover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cover_params
      params.require(:cover).permit(:name,:value)
    end
end