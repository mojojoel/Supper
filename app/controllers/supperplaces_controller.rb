class SupperplacesController < ApplicationController
  before_action :set_supperplace, only: [:show, :edit, :update, :destroy]

  # GET /supperplaces
  # GET /supperplaces.json
  def index
    @supperplaces = Supperplace.all
  end

  # GET /supperplaces/1
  # GET /supperplaces/1.json
  def show
  end

  # GET /supperplaces/new
  def new
    @supperplace = Supperplace.new
  end

  # GET /supperplaces/1/edit
  def edit
  end

  # POST /supperplaces
  # POST /supperplaces.json
  def create
    @supperplace = Supperplace.new(supperplace_params)

    respond_to do |format|
      if @supperplace.save
        format.html { redirect_to @supperplace, notice: 'Supperplace was successfully created.' }
        format.json { render :show, status: :created, location: @supperplace }
      else
        format.html { render :new }
        format.json { render json: @supperplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supperplaces/1
  # PATCH/PUT /supperplaces/1.json
  def update
    respond_to do |format|
      if @supperplace.update(supperplace_params)
        format.html { redirect_to @supperplace, notice: 'Supperplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @supperplace }
      else
        format.html { render :edit }
        format.json { render json: @supperplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supperplaces/1
  # DELETE /supperplaces/1.json
  def destroy
    @supperplace.destroy
    respond_to do |format|
      format.html { redirect_to supperplaces_url, notice: 'Supperplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supperplace
      @supperplace = Supperplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supperplace_params
      params.require(:supperplace).permit(:address, :website, :crusine, :phone, :state, :latitude, :longitude)
    end
end
