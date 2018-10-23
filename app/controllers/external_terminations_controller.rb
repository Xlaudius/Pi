class ExternalTerminationsController < ApplicationController
  before_action :set_external_termination, only: [:show, :edit, :update, :destroy]

  def index
    @external_terminations = ExternalTermination.all
  end

  def show  
  end


  def new
    @external_termination = ExternalTermination.new
  end

  def edit
  end

  def create
    @external_termination = ExternalTermination.new(external_termination_params)

    respond_to do |format|
      if @external_termination.save
        format.html { redirect_to @external_termination, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @external_termination }
      else
        format.html { render :new }
        format.json { render json: @external_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @external_termination.update(external_termination_params)
        format.html { redirect_to @external_termination, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_termination }
      else
        format.html { render :edit }
        format.json { render json: @external_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @external_termination.destroy
    respond_to do |format|
      format.html { redirect_to external_termination_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_termination
      @external_termination = ExternalTermination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_termination_params
      params.require(:external_termination).permit(:name,:value)
    end
end