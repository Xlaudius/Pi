class PropertySidewalksController < ApplicationController
  before_action :set_property_sidewalk, only: [:show, :edit, :update, :destroy]
  def index
    @property_sidewalks = PropertySidewalk.all
  end

  def show
  end

  def new
    @property_sidewalk = PropertySidewalk.new
  end

  def edit
  end

  def create
    @property_sidewalk = PropertySidewalk.new(property_sidewalk_params)

    respond_to do |format|
      if @property_sidewalk.save
        format.html { redirect_to @property_sidewalk, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_sidewalk }
      else
        format.html { render :new }
        format.json { render json: @property_sidewalk.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_sidewalk.update(property_sidewalk_params)
          format.html { redirect_to @property_sidewalk, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_sidewalk }
        else
          format.html { render :edit }
          format.json { render json: @property_sidewalk.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_sidewalk.destroy
    respond_to do |format|
      format.html { redirect_to property_sidewalk_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sidewalk
      @property_sidewalks = PropertySidewalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sidewalk_params
      params.require(:property_sidewalk).permit(:sidewalks_id, :properties_id)
    end
end