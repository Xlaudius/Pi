class PropertyclosetsController < ApplicationController
  before_action :set_property_closet, only: [:show, :edit, :update, :destroy]
  def index
    @property_closets = Propertycloset.all
  end

  def show
  end

  def new
    @property_closet = Propertycloset.new
  end

  def edit
  end

  def create
    @property_closet = Propertycloset.new(property_closet_params)

    respond_to do |format|
      if @property_closet.save
        format.html { redirect_to @property_closet, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_closet }
      else
        format.html { render :new }
        format.json { render json: @property_closet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_closet.update(property_closet_params)
          format.html { redirect_to @property_closet, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_closet }
        else
          format.html { render :edit }
          format.json { render json: @property_closet.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_closet.destroy
    respond_to do |format|
      format.html { redirect_to property_closet_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_closet
      @property_closets = Propertycloset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_closet_params
      params.require(:property_closet).permit(:closets_id, :properties_id)
    end
end
