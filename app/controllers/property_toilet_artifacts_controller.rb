class PropertyToiletArtifactsController < ApplicationController
  before_action :set_property_toilet_artifact, only: [:show, :edit, :update, :destroy]
  def index
    @property_artifacts = PropertyArtifact.all
  end

  def show
  end

  def new
    @property_artifact = PropertyArtifact.new
  end

  def edit
  end

  def create
    @property_artifact = PropertyArtifact.new(property_artifact_params)

    respond_to do |format|
      if @property_artifact.save
        format.html { redirect_to @property_artifact, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @property_artifact }
      else
        format.html { render :new }
        format.json { render json: @property_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @property_artifact.update(property_artifact_params)
          format.html { redirect_to @property_artifact, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @property_artifact }
        else
          format.html { render :edit }
          format.json { render json: @property_artifact.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @property_artifact.destroy
    respond_to do |format|
      format.html { redirect_to property_artifact_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_toilet_artifact
      @property_artifacts = PropertyArtifact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_artifact_params
      params.require(:property_artifact).permit(:properties_id, :water_rain_ducts_id)
    end
end