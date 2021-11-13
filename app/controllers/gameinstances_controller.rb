class GameinstancesController < ApplicationController
  before_action :set_gameinstance, only: %i[ show edit update destroy ]
  before_action :dataaccess
  def dataaccess
    @gametypes = Gametype.all
    @sessions = Session.all
    @paymenttypes = Paymenttype.all
  end
  # GET /gameinstances or /gameinstances.json
  def index
    @gameinstances = Gameinstance.all
  end

  # GET /gameinstances/1 or /gameinstances/1.json
  def show
  end

  # GET /gameinstances/new
  def new
    @gameinstance = Gameinstance.new
  end

  # GET /gameinstances/1/edit
  def edit
  end

  # POST /gameinstances or /gameinstances.json
  def create
    @gameinstance = Gameinstance.new(gameinstance_params)
    respond_to do |format|
      if @gameinstance.save
        format.html { redirect_to @gameinstance, notice: "Gameinstance was successfully created." }
        format.json { render :show, status: :created, location: @gameinstance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gameinstance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameinstances/1 or /gameinstances/1.json
  def update
    respond_to do |format|
      if @gameinstance.update(gameinstance_params)
        format.html { redirect_to @gameinstance, notice: "Gameinstance was successfully updated." }
        format.json { render :show, status: :ok, location: @gameinstance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gameinstance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameinstances/1 or /gameinstances/1.json
  def destroy
    @gametypes = Gametype.all
    @gameinstance.destroy
    respond_to do |format|
      format.html { redirect_to gameinstances_url, notice: "Gameinstance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameinstance
      @gameinstance = Gameinstance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gameinstance_params
      params.require(:gameinstance).permit(:sessionid, :playername, :betamount, :gametype, :multiplier, :commission, :paymentname, :currentprice, :crypto, :cryptoprice, :outcome, :result)
    end
end
