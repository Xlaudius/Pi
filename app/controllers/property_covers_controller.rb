class PropertyPropertyCoversController < ApplicationController
  before_action :set_property_cover, only: [:show, :edit, :update, :destroy]

  def index
    @property_covers = PropertyCover.all
  end

  def show  
  end


  def new
    @property_cover = PropertyCover.new
  end

  def edit
  end

  def create
    @property_cover = PropertyCover.new(property_cover_params)

    respond_to do |format|
      if @property_cover.save
        format.html { redirect_to @property_cover, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_cover }
      else
        format.html { render :new }
        format.json { render json: @property_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_cover.update(property_cover_params)
        format.html { redirect_to @property_cover, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_cover }
      else
        format.html { render :edit }
        format.json { render json: @property_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @property_cover.destroy
    respond_to do |format|
      format.html { redirect_to property_cover_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_cover
      @property_cover = PropertyCover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_cover_params
      params.require(:property_cover).permit(:observations,:properties_id,:covers_id)
    end
end