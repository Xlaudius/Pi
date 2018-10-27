class ToiletArtifactsController < ApplicationController
  before_action :set_toilet_artifact, only: [:show, :edit, :update, :destroy]
  def index
    @toilet_artifacts = ToiletArtifact.all
  end

  def show
  end

  def new
    @toilet_artifact = ToiletArtifact.new
  end

  def edit
  end

  def create
    @toilet_artifact = ToiletArtifact.new(toilet_artifact_params)

    respond_to do |format|
      if @toilet_artifact.save
        format.html { redirect_to @toilet_artifact, notice: 'Toilet Artifact was successfully created.' }
        format.json { render :show, status: :created, location: @toilet_artifact }
      else
        format.html { render :new }
        format.json { render json: @toilet_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @toilet_artifact.update(toilet_artifact_params)
          format.html { redirect_to @toilet_artifact, notice: 'Toilet Artifact was successfully updated.' }
          format.json { render :show, status: :ok, location: @toilet_artifact }
        else
          format.html { render :edit }
          format.json { render json: @toilet_artifact.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @toilet_artifact.destroy
    respond_to do |format|
      format.html { redirect_to toilet_artifact_url, notice: 'Toilet Artifact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toilet_artifact
      @toilet_artifacts = ToiletArtifact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toilet_artifact_params
      params.require(:toilet_artifact).permit(:name, :value)
    end
end