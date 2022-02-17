class PropatiesController < ApplicationController
  before_action :set_propaty, only: [:show, :update, :destroy]

  # GET /propaties
  def index
    @propaties = Propaty.all

    render json: @propaties
  end

  # GET /propaties/1
  def show
    render json: @propaty
  end

  # POST /propaties
  def create
    @propaty = Propaty.new(propaty_params)

    if @propaty.save
      render json: @propaty, status: :created, location: @propaty
    else
      render json: @propaty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propaties/1
  def update
    if @propaty.update(propaty_params)
      render json: @propaty
    else
      render json: @propaty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /propaties/1
  def destroy
    @propaty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propaty
      @propaty = Propaty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def propaty_params
      params.fetch(:propaty, {})
    end
end
