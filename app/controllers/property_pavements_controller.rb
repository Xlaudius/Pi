class PropertyPavementsController < ApplicationController
  before_action :set_property_pavement, only: [:show, :edit, :update, :destroy]
  def index
    @property_pavements = PropertyPavement.all
  end

  def show
  end

  def new
    @property_pavement = PropertyPavement.new
  end

  def edit
  end

  def create
    @property_pavement = PropertyPavement.new(property_pavement_params)

    respond_to do |format|
      if @property_pavement.save
        format.html { redirect_to @property_pavement, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_pavement }
      else
        format.html { render :new }
        format.json { render json: @property_pavement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_pavement.update(property_pavement_params)
          format.html { redirect_to @property_pavement, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_pavement }
        else
          format.html { render :edit }
          format.json { render json: @property_pavement.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_pavement.destroy
    respond_to do |format|
      format.html { redirect_to property_pavement_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_pavement
      @property_pavements = PropertyPavement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_pavement_params
      params.require(:property_pavement).permit(:pavements_id, :properties_id)
    end
end