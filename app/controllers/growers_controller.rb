class GrowersController < ApplicationController
  before_action :set_grower, only: [:show, :edit, :update, :destroy]

  # GET /growers
  # GET /growers.json
  def index
    @growers = Grower.all
  end

  # GET /growers/1
  # GET /growers/1.json
  def show
  end

  # GET /growers/new
  def new
    @grower = Grower.new
  end

  # GET /growers/1/edit
  def edit
  end

  # POST /growers
  # POST /growers.json
  def create
    @grower = Grower.new(grower_params)

    respond_to do |format|
      if @grower.save
        format.html { redirect_to @grower, notice: 'Grower was successfully created.' }
        format.json { render :show, status: :created, location: @grower }
      else
        format.html { render :new }
        format.json { render json: @grower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /growers/1
  # PATCH/PUT /growers/1.json
  def update
    respond_to do |format|
      if @grower.update(grower_params)
        format.html { redirect_to @grower, notice: 'Grower was successfully updated.' }
        format.json { render :show, status: :ok, location: @grower }
      else
        format.html { render :edit }
        format.json { render json: @grower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /growers/1
  # DELETE /growers/1.json
  def destroy
    @grower.destroy
    respond_to do |format|
      format.html { redirect_to growers_url, notice: 'Grower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grower
      @grower = Grower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grower_params
      params.require(:grower).permit(:first_name, :last_name, :phone_number, :email)
    end
end
