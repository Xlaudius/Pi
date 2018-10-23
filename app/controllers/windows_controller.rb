class WindowsController < ApplicationController
  before_action :set_window, only: [:show, :edit, :update, :destroy]
  def index
    @windows = Window.all
  end

  def show
  end

  def new
    @windows = Window.new
  end

  def edit
  end

  def create
    @window = Window.new(window_params)

    respond_to do |format|
      if @window.save
        format.html { redirect_to @window, notice: 'Window was successfully created.' }
        format.json { render :show, status: :created, location: @window }
      else
        format.html { render :new }
        format.json { render json: @window.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
        if @window.update(window_params)
          format.html { redirect_to @window, notice: 'Window was successfully updated.' }
          format.json { render :show, status: :ok, location: @window }
        else
          format.html { render :edit }
          format.json { render json: @window.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @window.destroy
    respond_to do |format|
      format.html { redirect_to windows_url, notice: 'Window was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_window
      @windows = Window.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def window_params
      params.require(:window).permit(:name, :value)
    end
end