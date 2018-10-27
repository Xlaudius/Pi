class StructuresController < ApplicationController
  before_action :set_structure, only: [:show, :edit, :update, :destroy]
  def index
    @structures = Structure.all
  end

  def show
  end

  def new
    @structure = Structure.new
  end

  def edit
  end

  def create
    @structure = Structure.new(structure_params)

    respond_to do |format|
      if @structure.save
        format.html { redirect_to @structure, notice: 'Structure was successfully created.' }
        format.json { render :show, status: :created, location: @structure }
      else
        format.html { render :new }
        format.json { render json: @structure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @structure.update(structure_params)
          format.html { redirect_to @structure, notice: 'Structure was successfully updated.' }
          format.json { render :show, status: :ok, location: @structure }
        else
          format.html { render :edit }
          format.json { render json: @structure.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @structure.destroy
    respond_to do |format|
      format.html { redirect_to structure_url, notice: 'Structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structure
      @structures = Structure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structure_params
      params.require(:structure).permit(:name, :value)
    end
end