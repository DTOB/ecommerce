class ProvincesController < ApplicationController
  before_action :set_province, only: [:show, :edit, :update, :destroy]

  # GET /provinces
  def index
    @provinces = Province.all
  end

  # GET /provinces/1
  def show
  end

  # GET /provinces/new
  def new
    @province = Province.new
  end

  # GET /provinces/1/edit
  def edit
  end

  # POST /provinces
  # POST /provinces.json
  def create
    @province = Province.new(province_params)

    if @province.save
      redirect_to @province, notice: 'Province was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /provinces/1
  def update
    if @province.update(province_params)
      redirect_to @province, notice: 'Province was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /provinces/1
  def destroy
    @province.destroy
      redirect_to provinces_url, notice: 'Province was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_province
      @province = Province.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def province_params
      params.require(:province).permit(:name, :pst, :gst, :hst, :created_at, :updated_at)
    end
end
