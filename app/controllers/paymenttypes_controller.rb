class PaymenttypesController < ApplicationController
  before_action :set_paymenttype, only: %i[ show edit update destroy ]

  # GET /paymenttypes or /paymenttypes.json
  def index
    @paymenttypes = Paymenttype.all
  end

  # GET /paymenttypes/1 or /paymenttypes/1.json
  def show
  end

  # GET /paymenttypes/new
  def new
    @paymenttype = Paymenttype.new
  end

  # GET /paymenttypes/1/edit
  def edit
  end

  # POST /paymenttypes or /paymenttypes.json
  def create
    @paymenttype = Paymenttype.new(paymenttype_params)

    respond_to do |format|
      if @paymenttype.save
        format.html { redirect_to @paymenttype, notice: "Paymenttype was successfully created." }
        format.json { render :show, status: :created, location: @paymenttype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paymenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymenttypes/1 or /paymenttypes/1.json
  def update
    respond_to do |format|
      if @paymenttype.update(paymenttype_params)
        format.html { redirect_to @paymenttype, notice: "Paymenttype was successfully updated." }
        format.json { render :show, status: :ok, location: @paymenttype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paymenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymenttypes/1 or /paymenttypes/1.json
  def destroy
    @paymenttype.destroy
    respond_to do |format|
      format.html { redirect_to paymenttypes_url, notice: "Paymenttype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymenttype
      @paymenttype = Paymenttype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paymenttype_params
      params.require(:paymenttype).permit(:paymentname, :currentprice, :crypto, :cryptourl)
    end
end
