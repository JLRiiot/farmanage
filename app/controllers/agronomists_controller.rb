class AgronomistsController < ApplicationController
  before_action :set_agronomist, only: [:show, :edit, :update, :destroy]

  # GET /agronomists
  # GET /agronomists.json
  def index
    @agronomists = Agronomist.all
  end

  # GET /agronomists/1
  # GET /agronomists/1.json
  def show
  end

  # GET /agronomists/new
  def new
    @agronomist = Agronomist.new
  end

  # GET /agronomists/1/edit
  def edit
  end

  # POST /agronomists
  # POST /agronomists.json
  def create
    @agronomist = Agronomist.new(agronomist_params)

    respond_to do |format|
      if @agronomist.save
        format.html { redirect_to @agronomist, notice: 'Agronomist was successfully created.' }
        format.json { render :show, status: :created, location: @agronomist }
      else
        format.html { render :new }
        format.json { render json: @agronomist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agronomists/1
  # PATCH/PUT /agronomists/1.json
  def update
    respond_to do |format|
      if @agronomist.update(agronomist_params)
        format.html { redirect_to @agronomist, notice: 'Agronomist was successfully updated.' }
        format.json { render :show, status: :ok, location: @agronomist }
      else
        format.html { render :edit }
        format.json { render json: @agronomist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agronomists/1
  # DELETE /agronomists/1.json
  def destroy
    @agronomist.destroy
    respond_to do |format|
      format.html { redirect_to agronomists_url, notice: 'Agronomist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agronomist
      @agronomist = Agronomist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agronomist_params
      params.require(:agronomist).permit(:first_name, :last_name, :birthday)
    end
end
