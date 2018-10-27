class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]
  def index
    @states = State.all
  end

  def show
  end

  def new
    @state = State.new
  end

  def edit
  end

  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to @state, notice: 'state was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @state.update(state_params)
          format.html { redirect_to @state, notice: 'state was successfully updated.' }
          format.json { render :show, status: :ok, location: @state }
        else
          format.html { render :edit }
          format.json { render json: @state.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @state.destroy
    respond_to do |format|
      format.html { redirect_to state_url, notice: 'state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @states = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:name)
    end
end
