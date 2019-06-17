class DashmebuttonsController < ApplicationController
  before_action :set_dashmebutton, only: [:show, :edit, :update, :destroy]

  # GET /dashmebuttons
  # GET /dashmebuttons.json
  def index
    @dashmebuttons = Dashmebutton.all
  end

  # GET /dashmebuttons/1
  # GET /dashmebuttons/1.json
  def show
  end

  # GET /dashmebuttons/new
  def new
    @dashmebutton = Dashmebutton.new
  end

  # GET /dashmebuttons/1/edit
  def edit
  end

  # POST /dashmebuttons
  # POST /dashmebuttons.json
  def create
    @dashmebutton = Dashmebutton.new(dashmebutton_params)

    respond_to do |format|
      if @dashmebutton.save
        format.html { redirect_to @dashmebutton, notice: 'Dashmebutton was successfully created.' }
        format.json { render :show, status: :created, location: @dashmebutton }
      else
        format.html { render :new }
        format.json { render json: @dashmebutton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashmebuttons/1
  # PATCH/PUT /dashmebuttons/1.json
  def update
    respond_to do |format|
      if @dashmebutton.update(dashmebutton_params)
        format.html { redirect_to @dashmebutton, notice: 'Dashmebutton was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashmebutton }
      else
        format.html { render :edit }
        format.json { render json: @dashmebutton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashmebuttons/1
  # DELETE /dashmebuttons/1.json
  def destroy
    @dashmebutton.destroy
    respond_to do |format|
      format.html { redirect_to dashmebuttons_url, notice: 'Dashmebutton was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashmebutton
      @dashmebutton = Dashmebutton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashmebutton_params
      params.require(:dashmebutton).permit(:name, :shop, :image)
    end
end
