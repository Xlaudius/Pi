class ClientTypesController < ApplicationController
  before_action :set_client_type, only: [:show, :edit, :update, :destroy]

  
  def index
    @client_types = ClientType.all
  end

  def show  
  end


  def new
    @client_type = ClientType.new
  end

  def edit
  end

  def create
    @client_type = ClientType.new(client_type_params)

    respond_to do |format|
      if @client_type.save
        format.html { redirect_to @client_type, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @client_type }
      else
        format.html { render :new }
        format.json { render json: @client_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @client_type.update(client_type_params)
        format.html { redirect_to @client_type, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_type }
      else
        format.html { render :edit }
        format.json { render json: @client_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @client_type.destroy
    respond_to do |format|
      format.html { redirect_to client_type_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_type
      @client_type = ClientType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_type_params
      params.require(:client_type).permit(:name)
    end
end