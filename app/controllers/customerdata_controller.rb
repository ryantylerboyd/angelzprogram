class CustomerdataController < ApplicationController
  before_action :set_customerdatum, only: %i[ show edit update destroy ]

  # GET /customerdata or /customerdata.json
  def index
    @customerdata = Customerdatum.all
  end

  # GET /customerdata/1 or /customerdata/1.json
  def show
  end

  # GET /customerdata/new
  def new
    @customerdatum = Customerdatum.new
  end

  # GET /customerdata/1/edit
  def edit
  end

  # POST /customerdata or /customerdata.json
  def create
    @customerdatum = Customerdatum.new(customerdatum_params)

    respond_to do |format|
      if @customerdatum.save
        format.html { redirect_to @customerdatum, notice: "Customerdatum was successfully created." }
        format.json { render :show, status: :created, location: @customerdatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customerdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerdata/1 or /customerdata/1.json
  def update
    respond_to do |format|
      if @customerdatum.update(customerdatum_params)
        format.html { redirect_to @customerdatum, notice: "Customerdatum was successfully updated." }
        format.json { render :show, status: :ok, location: @customerdatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customerdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerdata/1 or /customerdata/1.json
  def destroy
    @customerdatum.destroy
    respond_to do |format|
      format.html { redirect_to customerdata_url, notice: "Customerdatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerdatum
      @customerdatum = Customerdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customerdatum_params
      params.require(:customerdatum).permit(:playername, :betamount, :paymenttype, :multiplier, :gametype, :commission, :currencyconvert, :outcome, :netincome)
    end
end
