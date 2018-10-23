class ServiceYardsController < ApplicationController
  before_action :set_service_yard, only: [:show, :edit, :update, :destroy]
  def index
    @service_yards = ServiceYard.all
  end

  def show
  end

  def new
    @service_yard = ServiceYard.new
  end

  def edit
  end

  def create
    @service_yard = ServiceYard.new(service_yard_params)

    respond_to do |format|
      if @service_yard.save
        format.html { redirect_to @service_yard, notice: 'Street Location was successfully created.' }
        format.json { render :show, status: :created, location: @service_yard }
      else
        format.html { render :new }
        format.json { render json: @service_yard.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @service_yard.update(service_yard_params)
          format.html { redirect_to @service_yard, notice: 'Street Location was successfully updated.' }
          format.json { render :show, status: :ok, location: @service_yard }
        else
          format.html { render :edit }
          format.json { render json: @service_yard.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @service_yard.destroy
    respond_to do |format|
      format.html { redirect_to service_yard_url, notice: 'Street Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_yard
      @service_yards = ServiceYard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_yard_params
      params.require(:service_yard).permit(:name, :value)
    end
end